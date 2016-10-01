<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hindi.aspx.cs" Inherits="Hindi"  %>

<head  runat="server">


<script type="text/javascript" src="https://www.google.com/jsapi">
    </script>
    <script type="text/javascript" src="https://www.google.com/jsapi=INSERT-YOUR-KEY"></script>
    <script type="text/javascript">

          // Load the Google Transliterate API
        google.load("elements", "1", {
            packages: "transliteration"
        });
        google.load("elements", "1", {
            packages: "keyboard"
        });
    function onLoad() {
            var options = {
                sourceLanguage:
                google.elements.transliteration.LanguageCode.ENGLISH,
                destinationLanguage:
                [google.elements.transliteration.LanguageCode.HINDI],
                transliterationEnabled: true
            };
            
            // Create an instance on TransliterationControl with the required
            // options.
            var control =
            new google.elements.transliteration.TransliterationControl(options);
 
            // Enable transliteration in the textbox with id
            // 'transliterateTextarea'.
            control.makeTransliteratable(['t1']);
            control.makeTransliteratable(['t2']);

            var kbd = new google.elements.keyboard.Keyboard(
          [google.elements.keyboard.LayoutCode.HINDI],
          ['t1']);
        }
        google.setOnLoadCallback(onLoad);
        </script>

</head>


  <body> <div> <form id="form1" runat=server >
   <iframe id="myIframe" src="hinditest.aspx" height="43%" width="100%"></iframe>
    <asp:TextBox ID="t1" runat="server"></asp:TextBox>
    <asp:TextBox ID="t2" runat="server"></asp:TextBox>
    <div>
    
    </div>
    </div>
    </form>
</body>


