unit UnitSport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UnitMain;

type
  TFormSport = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    PanelSozdat: TPanel;
    ComboBox1: TComboBox;
    procedure PanelSozdatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSport: TFormSport;

implementation

{$R *.dfm}

procedure TFormSport.PanelSozdatClick(Sender: TObject);
begin
  Try

   FormMain.UniQuery_Sport.Active:=True;


   FormMain.UniQuery_Sport.Insert;
   FormMain.UniQuery_Sport.Edit;

   FormMain.UniQuery_Sport.FieldByName('�������� ������������').Value := Edit1.Text;
   FormMain.UniQuery_Sport.FieldByName('��� ������').Value := Edit2.Text;
   FormMain.UniQuery_Sport.FieldByName('���� ������').Value := Edit3.Text;

   FormMain.UniQuery_Sport.FieldByName('���� ���������').Value := Edit4.Text;
   FormMain.UniQuery_Sport.FieldByName('�����').Value := Edit5.Text;
   FormMain.UniQuery_Sport.FieldByName('��������').Value := Edit6.Text;;
   FormMain.UniQuery_Sport.FieldByName('�����').Value := Edit7.Text;
   FormMain.UniQuery_Sport.FieldByName('�����������').Value := Edit8.Text;



   FormMain.UniQuery_Sport.Post;

   ShowMessage('�������!');
   except
    ShowMessage('��������� ����!');
   end;
end;

end.
