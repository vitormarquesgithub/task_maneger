unit NotesManagesForm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { NotesForm }

  TNotesForm = class(TForm)
      lblNotes: TLabel;
      memoNotes: TMemo;
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

