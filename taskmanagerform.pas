unit TaskManagerForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, CheckLst, ComCtrls, Menus, LCLType;

type
  { TTaskForm }

  TTaskForm = class(TForm)
    btnClearTasks: TButton;
    chkTasks: TCheckListBox;
    edtTask: TEdit;
    lblTasks: TLabel;
    memoNotes: TMemo;
    pgcTabs: TPageControl;
    tabTasks: TTabSheet;
    procedure EdtTaskKeyPress(Sender: TObject; var Key: char);
    procedure AddTask(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word);
    procedure ClearTasks(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  TaskForm: TTaskForm;

implementation

{$R *.lfm}

procedure TTaskForm.EdtTaskKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #13 then
  begin
    AddTask(Sender);
    Key := #0;
  end;
end;

procedure TTaskForm.AddTask(Sender: TObject);
begin
  if Trim(edtTask.Text) <> '' then
  begin
    chkTasks.Items.Add(edtTask.Text);
    edtTask.Clear;
  end;
end;

procedure TTaskForm.FormKeyDown(Sender: TObject; var Key: Word);
begin
  if (Key = VK_DELETE) or (Key = VK_BACK) then
  begin
    if chkTasks.ItemIndex >= 0 then
      chkTasks.Items.Delete(chkTasks.ItemIndex);
  end;
end;

procedure TTaskForm.ClearTasks(Sender: TObject);
begin
  chkTasks.Items.Clear;
end;

{ Script }

end.

