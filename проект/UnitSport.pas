unit UnitSport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.WinXPickers, Vcl.ComCtrls;

type
  TFormSport = class(TForm)
    PanelSozdat: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Lable: TLabel;
    Edit9: TEdit;
    Edit6: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure PanelSozdatClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSport: TFormSport;
  a: string;

implementation

{$R *.dfm}
uses
UnitMain;

procedure TFormSport.DBLookupComboBox1Click(Sender: TObject);
begin  //a:= DBLookupComboBox1.Text;
  //FormMain.UniQuery_Parti.Active:= False;
  //FormMain.UniQuery_Parti.SQL.Clear;
  //FormMain.UniQuery_Parti.SQL.Text:= 'select * from participants where Фамилия LIKE:a';
  //FormMain.UniQuery_Parti.Params.ParamValues['a'] := a;
  FormMain.UniQuery_Parti.Active:= True;


 // if FormMain.UniQuery_Parti.RecordCount > 0 then
  if (FormMain.UniQuery_Parti.FieldByName('Фамилия').Value = DBLookupComboBox1.Text) then
  begin
    Edit4.Text := FormMain.UniQuery_Parti.FieldByName('Имя').Value;
    Edit7.Text := FormMain.UniQuery_Parti.FieldByName('Вид_спорта').Value;
    Edit8.Text := FormMain.UniQuery_Parti.FieldByName('Команда').Value;
  end;

end;



procedure TFormSport.DBLookupComboBox4Click(Sender: TObject);
begin
  FormMain.UniQueryJudges.Active:= True;

  if (FormMain.UniQueryJudges.FieldByName('Фамилия').Value = DBLookupComboBox4.Text) then
  begin
    Edit5.Text := FormMain.UniQueryJudges.FieldByName('Имя').Value;
    Edit6.Text := FormMain.UniQueryJudges.FieldByName('Фамилия').Value;
  end;

end;

procedure TFormSport.PanelSozdatClick(Sender: TObject);
begin
  Try

   FormMain.UniQuery_Sport.Active:=True;


   FormMain.UniQuery_Sport.Insert;
   FormMain.UniQuery_Sport.Edit;

   FormMain.UniQuery_Sport.FieldByName('Название_соревнования').Value := Edit1.Text;
   FormMain.UniQuery_Sport.FieldByName('Название_спорта').Value := Edit7.Text;
   FormMain.UniQuery_Sport.FieldByName('Команда').Value := Edit8.Text;
   FormMain.UniQuery_Sport.FieldByName('Дата_начала').Value := DateTimePicker1.Date;
   FormMain.UniQuery_Sport.FieldByName('Дата_окончания').Value := DateTimePicker2.Date;
   FormMain.UniQuery_Sport.FieldByName('Название_места').Value := DBLookupComboBox3.Text;
   FormMain.UniQuery_Sport.FieldByName('Участник').Value := DBLookupComboBox1.Text;;
   FormMain.UniQuery_Sport.FieldByName('Судья').Value :=  Edit6.Text;
   FormMain.UniQuery_Sport.FieldByName('Организатор').Value := Edit9.Text;



   FormMain.UniQuery_Sport.Post;

   ShowMessage('Успешно!');

      FormSport.Close;
      Edit1.Clear;
      Edit7.Clear;
      Edit8.Clear;
      Edit4.Clear;
      Edit5.Clear;
      Edit9.Clear;
      Edit6.Clear;
   except
    ShowMessage('Заполните поля!');
   end;
end;

end.
