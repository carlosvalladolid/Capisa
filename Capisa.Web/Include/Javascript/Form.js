var NotyControl;
function ShowMessage(Type, Message) 
{
  if (Type == 1)
    NotyControl = noty({ text: Message, type: 'infomation' });
  else
    NotyControl = noty({ text: Message, type: 'error' });
}


var MessageInfo = 1;
var MessageError = 2;

function ValidateForm() 
{
 var NameBox = $("#NameBox").val();
 var EmailBox = $("#EmailBox").val();
 var PhoneBox = $("#PhoneBox").val();
 var CityBox = $("#CityBox").val();
 var EstateBox = $("#EstateBox").val();
 var CountryBox = $("#CountryBox").val();

 if(NameBox == "")
 {
   ShowMessage(2,"El campo Nombre es obligatorio.");
   return false;
 }
 if(EmailBox == "")
 {
   ShowMessage(2,"El campo Email es obligatorio.");
   return false;
 }
 if(PhoneBox == "")
 {
   ShowMessage(2,"El campo Telefono es obligatorio.");
   return false;
 }
 if(CityBox == "")
 {
   ShowMessage(2,"El campo Ciudad es obligatorio.");
   return false;
 }
 if(EstateBox == "")
 {
   ShowMessage(2,"El campo Estado es obligatorio.");
   return false;
 }
 if(CountryBox == "")
 {
   ShowMessage(2,"El campo Pais es obligatorio.");
   return false;
 }

 if (NotyControl != null)
   NotyControl.close();
 return true;
}