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
  if (ComboBox1.Text = ('��������������')) then
  begin
    Edit2.Text := ('�������������� �����');
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

       FormMain.UniQuery_Parti.FieldByName('�������').Value := Edit4.Text;
       FormMain.UniQuery_Parti.FieldByName('���').Value := Edit7.Text;
       FormMain.UniQuery_Parti.FieldByName('��������').Value := Edit8.Text;
       FormMain.UniQuery_Parti.FieldByName('����_��������').Value := DateTimePicker1.Date;
       FormMain.UniQuery_Parti.FieldByName('���_������').Value := DBLookupComboBox3.Text;
       FormMain.UniQuery_Parti.FieldByName('�������').Value := Edit2.Text;




      FormMain.UniQuery_Parti.Post;

      ShowMessage('�������!');

      FormCreate.Close;
      Edit4.Clear;
      Edit7.Clear;
      Edit8.Clear;
      Edit2.Clear;
   except
      ShowMessage('��������� ����!');
   end;
end;

end.
