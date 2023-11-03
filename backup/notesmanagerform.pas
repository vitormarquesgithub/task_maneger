unit NotesManagerForm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TNotesForm }

  TNotesForm = class(TForm)
      memoNotes: TMemo;
      btnClearNotes: TButton;
      procedure ClearNotes(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  NotesForm: TNotesForm;

implementation

{$R *.lfm}

procedure TNotesForm.ClearNotes(Sender: TObject);
begin
  memoNotes.Clear;
end;


end.

