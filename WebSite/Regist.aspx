<%@ Page Title="" Language="C#" MasterPageFile="~/CD.master" AutoEventWireup="true" CodeFile="Regist.aspx.cs" Inherits="Regist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
  
  <script type="text/javascript">

      $(document).ready(function () {
          $('.btn-submit').click(function (e) {
              // Declare the function variables:
              // Parent form, form URL, email regex and the error HTML
              var $formId = $(this).parents('form');
              var formAction = $formId.attr('action');
              var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
              var $error = $('<span class="error"></span>');

              // Prepare the form for validation - remove previous errors
              $('li', $formId).removeClass('error');
              $('span.error').remove();

              // Validate all inputs with the class "required"
              $('.required', $formId).each(function () {
                  var inputVal = $(this).val();
                  var $parentTag = $(this).parent();
                  if (inputVal == '') {
                      $parentTag.addClass('error').append($error.clone().text('שדה חובה'));
                  }

                  // Run the email validation using the regex for those input items also having class "email"
                  if ($(this).hasClass('email') == true) {
                      if (!emailReg.test(inputVal)) {
                          $parentTag.addClass('error').append($error.clone().text('יש להקליד מייל תקין'));
                      }
                  }

                  // Check passwords match for inputs with class "password"
                  if ($(this).hasClass('password') == true) {
                      var password1 = $("[id*=password1]").val();
                      var password2 = $("[id*=password2]").val();
                      if (password1 != password2) {
                          $parentTag.addClass('error').append($error.clone().text('סיסמה לא תואמת'));
                      }
                  }
              });

              // All validation complete - Check if any errors exist
              // If has errors
              if ($('span.error').length > 0) {

                  $('span.error').each(function () {

                      // Set the distance for the error animation
                      var distance = 5;

                      // Get the error dimensions
                      var width = $(this).outerWidth();

                      // Calculate starting position
                      var start = width + distance;

                      // Set the initial CSS
                      $(this).show().css({
                          display: 'block',
                          opacity: 0,
                          right: -start + 'px'
                      })
                      // Animate the error message
				.animate({
				    right: -width + 'px',
				    opacity: 1
				}, 'slow');
            // Prevent form submission
              e.preventDefault();
                  });
              } else {
                  $formId.submit();
              }
             
          });

          // Fade out error message when input field gains focus
          $('.required').focus(function () {
              var $parent = $(this).parent();
              $parent.removeClass('error');
              $('span.error', $parent).fadeOut();
          });
      });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageMainContent" Runat="Server">

<div class="wrap">
     <div id="form-sign-up" class="styled">
            <fieldset>
			  <h3>הרשמה</h3>
			  <ol>
			    <li class="form-row">
                    <asp:TextBox ID="tbxFirstname" runat="server" class="text-input required" />
				  <label>שם:</label>
				</li>
                <li class="form-row"> <asp:TextBox ID="tbxLastname" runat="server" class="text-input required" />
				 <label>שם משפחה:</label>
				</li>
                <li class="form-row"> <asp:TextBox ID="tbxUsername" runat="server" class="text-input required" />
				 <label>שם משתמש:</label>
				</li>
				<li class="form-row">
				  
                   <asp:TextBox ID="tbxEmail" runat="server" class="text-input required email" />
                  <label>אמייל:</label>
				</li>
				<li class="form-row">
                 <asp:TextBox ID="password1" runat="server" class="text-input required password" TextMode="Password" />
				  <label>סיסמה:</label>
				</li>
				<li class="form-row"><label>סיסמה בשנית:</label>
                <asp:TextBox ID="password2" runat="server" class="text-input required password" TextMode="Password" />
				  
				</li>
				<li class="button-row">
                    
                    <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click" class="btn-submit img-swap" 
                        alt="Sign Up" />
                    
                </li>
                <li class="form-row"><label></label>
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
				  
				</li>

			  </ol>
			</fieldset>
	  </div></div>
</asp:Content>

