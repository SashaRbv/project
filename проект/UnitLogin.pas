unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UnitMain;

type
  TFormLogin = class(TForm)
    PanelTop: TPanel;
    PanelDown: TPanel;
    PanelEntry: TPanel;
    PanelWelcome: TPanel;
    EditLogin: TEdit;
    EditPassword: TEdit;
    Panel1: TPanel;
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;
  IDSave:string;
  SQLstring:string;

implementation

{$R *.dfm}

procedure TFormLogin.Panel1Click(Sender: TObject);
begin
begin
  try
       FormMain.UniConnection.Connected:= False;
       //FormMain.UniConnection.Server := '127.0.0.1';
       FormMain.UniConnection.ProviderName:='MySQL';
       FormMain.UniConnection.Port:= 3306;
       FormMain.UniConnection.Password:='';
       FormMain.UniConnection.Database:='project';
       FormMain.UniConnection.Connected := True;

        ShowMessage('Подключение установлено');
        FormMain.UniQuery_Organizator.Active:=False;
        FormMain.UniQuery_Organizator.SQL.Clear;
        SQLstring:='select * from organizer where Логин ='+EditLogin.Text;
        FormMain.UniQuery_Organizator.SQL.Add(SQLstring) ;
        FormMain.UniQuery_Organizator.Active:= True;

        if FormMain.UniQuery_Organizator.RecordCount>0 then
      begin
         if FormMain.UniQuery_Organizator.FieldByName('Пароль').Value =  EditPassword.Text then
         begin
           // FormMain.Edit_Surname.Text:= Form_Basic.UniQuery_Realtors.FieldByName('Surname').Value;
           // FormMain.Edit_Name.Text:= Form_Basic.UniQuery_Realtors.FieldByName('Name').Value;
           // FormMain.Edit_Patronymic.Text:= Form_Basic.UniQuery_Realtors.FieldByName('Patronymic').Value;
           // FormMain.Label_Name.Caption:= Form_Basic.UniQuery_Realtors.FieldByName('Name').Value;
            //FormMain.Label_Surname.Caption:= Form_Basic.UniQuery_Realtors.FieldByName('Surname').Value;
           // FormMain.Label_Patronymic.Caption:= Form_Basic.UniQuery_Realtors.FieldByName('Patronymic').Value;
           // FormMain.Label_ID.Caption:= Form_Basic.UniQuery_Realtors.FieldByName('ID').Value;
            FormMain.Show;
           // IDSave:=FormMain.UniQuery_Realtors.FieldByName('ID').Value;


         end
         else
         ShowMessage('Неверный пароль');

      end
      else
      ShowMessage('Пользователь не найден');

      Except
      ShowMessage('Ошибка подключения к базе');

  End;
end;
end;

end.
