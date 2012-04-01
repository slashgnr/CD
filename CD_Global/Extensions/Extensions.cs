using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Reflection;
using System.Globalization;
using System.Data.Linq;
using System.Data.Objects;

namespace CD_Global.Extensions
{
    public static class Extensions
    {
        public static T ConvertToEnum<T>(this string value) where T : new()
        {
            if (!typeof(T).IsEnum)
                throw new NotSupportedException("T must be an Enum");
            try
            {
                return (T)Enum.Parse(typeof(T), value);
            }
            catch
            {
                return default(T);

            }
        }

        public static DataTable ToDataTable<T>(this List<T> list)
        {
            DataTable dt = new DataTable();

            // Get a list of all the properties on the object
            PropertyInfo[] pi = typeof(T).GetProperties();

            // Loop through each property, and add it as a column to the datatable
            foreach (PropertyInfo p in pi)
            {
                // The the type of the property
                Type columnType = p.PropertyType;

                // We need to check whether the property is NULLABLE
                if (p.PropertyType.IsGenericType && p.PropertyType.GetGenericTypeDefinition() == typeof(Nullable<>))
                {
                    // If it is NULLABLE, then get the underlying type. eg if "Nullable<int>" then this will return just "int"
                    columnType = p.PropertyType.GetGenericArguments()[0];
                }

                // Add the column definition to the datatable.
                dt.Columns.Add(new DataColumn(p.Name, columnType));
            }

            // For each object in the list, loop through and add the data to the datatable.
            foreach (object obj in list)
            {
                object[] row = new object[pi.Length];
                int i = 0;

                foreach (PropertyInfo p in pi)
                {
                    row[i++] = p.GetValue(obj, null);
                }

                dt.Rows.Add(row);
            }

            return dt;
        }

        public static DataTable ToDataTable<T>(this T[] array)
        {
            DataTable dt = new DataTable();

            // Get a list of all the properties on the object
            PropertyInfo[] pi = typeof(T).GetProperties();

            // Loop through each property, and add it as a column to the datatable
            foreach (PropertyInfo p in pi)
            {
                // The the type of the property
                Type columnType = p.PropertyType;

                // We need to check whether the property is NULLABLE
                if (p.PropertyType.IsGenericType && p.PropertyType.GetGenericTypeDefinition() == typeof(Nullable<>))
                {
                    // If it is NULLABLE, then get the underlying type. eg if "Nullable<int>" then this will return just "int"
                    columnType = p.PropertyType.GetGenericArguments()[0];
                }

                // Add the column definition to the datatable.
                dt.Columns.Add(new DataColumn(p.Name, columnType));
            }

            // For each object in the list, loop through and add the data to the datatable.
            foreach (object obj in array)
            {
                object[] row = new object[pi.Length];
                int i = 0;

                foreach (PropertyInfo p in pi)
                {
                    row[i++] = p.GetValue(obj, null);
                }

                dt.Rows.Add(row);
            }

            return dt;
        }

        public static IEnumerable<TSource> DistinctBy<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector)
        {
            HashSet<TKey> seenKeys = new HashSet<TKey>();
            foreach (TSource element in source)
            {
                if (seenKeys.Add(keySelector(element)))
                {
                    yield return element;
                }
            }
        }

        public static string ToHebrewJewishDateString(this DateTime originalDate, bool addDayOfWeek)
        {
            System.Text.StringBuilder hebrewFormatedString = new System.Text.StringBuilder();

            // Create the hebrew culture to use hebrew (Jewish) calendar 
            CultureInfo jewishCulture = CultureInfo.CreateSpecificCulture("he-IL");
            jewishCulture.DateTimeFormat.Calendar = new HebrewCalendar();

            #region Format the date into a Jewish format

            if (addDayOfWeek)
            {
                // Day of the week in the format " " 
                hebrewFormatedString.Append(originalDate.ToString("dddd", jewishCulture) + " ");
            }

            // Day of the month in the format "'" 
            hebrewFormatedString.Append(originalDate.ToString("dd", jewishCulture) + " ");

            // Month and year in the format " " 
            hebrewFormatedString.Append("" + originalDate.ToString("y", jewishCulture));

            #endregion

            return hebrewFormatedString.ToString();
        }

        /// <summary>
        /// Get a table entity by table name
        /// </summary>
        /// <param name="context">The entities context</param>
        /// <param name="tableName">The table name</param>
        /// <returns>The entity of the matching table name</returns>
        public static ITable GetTableByName(this ObjectContext context, string tableName)
        {
            if (context == null)
            {
                throw new ArgumentNullException("context");
            }
            if (tableName == null)
            {
                throw new ArgumentNullException("tableName");
            }
            return (ITable)context.GetType().GetProperty(tableName).GetValue(context, null);
        }


    }
}
