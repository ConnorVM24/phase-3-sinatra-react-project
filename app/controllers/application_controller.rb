class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"


  #gets all the notes
  get "/notes" do
    notes = Note.all
    notes.to_json
  end
  # gets the specific note for when you click on the note
  get "/notes/:id" do 
    notes = Note.find(params[:id])
    notes.to_json
  end

  #deletes specific note

  delete "/notes/:id" do 
    deleted_note = Note.find(params[:id])
    deleted_note.destroy
    deleted_note.to_json
  end

  #creates a new note
  post "/notes" do
    note = Note.create(title: params[:title], content: params[:content])
    note.to_json
  end
end
