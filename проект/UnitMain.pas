unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  UniProvider, MySQLUniProvider, DBAccess, Uni, MemDS, Vcl.ExtCtrls;

type
  TFormMain = class(TForm)
    UniConnection: TUniConnection;
    UniDataSource_Sport: TUniDataSource;
    MySQLUniProvider: TMySQLUniProvider;
    UniQuery_Sport: TUniQuery;
    UniQuery_Organizator: TUniQuery;
    UniDataSource_Organizator: TUniDataSource;
    PanelTop: TPanel;
    PanelDown: TPanel;
    PanelSideBar: TPanel;
    Notebook: TNotebook;
    PanelHome: TPanel;
    PanelParti: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    PanelSideBarTime: TPanel;
    Timer: TTimer;
    DBGrid_Sport: TDBGrid;
    PanelSozdat: TPanel;
    procedure PanelSideBarTimeClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure PanelHomeClick(Sender: TObject);
    procedure PanelSozdatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  SideBar: Byte;

implementation

{$R *.dfm}
uses
UnitSport;

procedure TFormMain.PanelHomeClick(Sender: TObject);
begin
  Notebook.ActivePage  := 'Main';
end;

procedure TFormMain.PanelSideBarTimeClick(Sender: TObject);
begin
  Timer.Enabled := True;
end;

procedure TFormMain.PanelSozdatClick(Sender: TObject);
begin
 FormSport.Show;
end;

procedure TFormMain.TimerTimer(Sender: TObject);
var
  i: integer;
begin
        if SideBar = 0 then
        begin
          begin
            if PanelSideBar.Width >= 80 then
           begin
              PanelSideBar.Width := PanelSideBar.Width - 10;
              PanelHome.Caption := '';
              PanelParti.Caption := '';
              Panel1.Caption := '';
              Panel2.Caption := '';
           end
          else
            begin
              Timer.Enabled := False;
              SideBar := 1;
              PanelHome.Caption := '';
              PanelParti.Caption := '';
              Panel1.Caption := '';
              Panel2.Caption := '';
            end;
           end;
        end;

        if SideBar = 1 then
       begin
        if PanelSideBar.Width <= 250 then
          begin
            PanelSideBar.Width := PanelSideBar.Width + 10;
          end
        else
          begin
            Timer.Enabled := False;
            SideBar := 0;
            PanelHome.Caption := '�������';
            PanelParti.Caption := '���������';
            Panel1.Caption := '�����';
            Panel2.Caption := '���������';
          end;
        end;
end;

end.
