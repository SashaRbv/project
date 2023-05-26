unit UnitPartiCreate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFormCreate = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Lable: TLabel;
    PanelSozdat: TPanel;
    DBLookupComboBox3: TDBLookupComboBox;
    Edit4: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    procedure PanelSozdatClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCreate: TFormCreate;

implementation

{$R *.dfm}
uses
UnitMain;

procedure TFormCreate.ComboBox1Change(Sender: TObject);
begin
  if (ComboBox1.Text = ('Индивидуальный')) then
  begin
    Edit2.Text := ('Индивидуальный спорт');
  end
  else
  begin
     Edit2.Text := ('');
  end;

end;

procedure TFormCreate.PanelSozdatClick(Sender: TObject);
begin
  Try


       FormMain.UniQuery_Parti.Insert;
       FormMain.UniQuery_Parti.Edit;

       FormMain.UniQuery_Parti.FieldByName('Фамилия').Value := Edit4.Text;
       FormMain.UniQuery_Parti.FieldByName('Имя').Value := Edit7.Text;
       FormMain.UniQuery_Parti.FieldByName('Отчество').Value := Edit8.Text;
       FormMain.UniQuery_Parti.FieldByName('Дата_рождения').Value := DateTimePicker1.Date;
       FormMain.UniQuery_Parti.FieldByName('Вид_спорта').Value := DBLookupComboBox3.Text;
       FormMain.UniQuery_Parti.FieldByName('Команда').Value := Edit2.Text;




      FormMain.UniQuery_Parti.Post;

      ShowMessage('Успешно!');

      FormCreate.Close;
      Edit4.Clear;
      Edit7.Clear;
      Edit8.Clear;
      Edit2.Clear;
   except
      ShowMessage('Заполните поля!');
   end;
end;

end.
