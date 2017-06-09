class JournalEntriesController < ApplicationController
  def index
    @journal_entries = JournalEntry.all

    render("journal_entries/index.html.erb")
  end

  def show
    @journal_entry = JournalEntry.find(params[:id])

    render("journal_entries/show.html.erb")
  end

  def new
    @journal_entry = JournalEntry.new

    render("journal_entries/new.html.erb")
  end
  
   def home
    @journal_entries = JournalEntry.all
    @journal_entry = JournalEntry.new
    
    render("journal_entries/home.html.erb")
  end

  def create
    @journal_entry = JournalEntry.new

    @journal_entry.date_of_link = params[:date_of_link]
    @journal_entry.type_of_link = params[:type_of_link]
    @journal_entry.full_name = params[:full_name]
    @journal_entry.reason = params[:reason]
    @journal_entry.notes = params[:notes]
    @journal_entry.user_id = params[:user_id]
    @journal_entry.friend_id = params[:friend_id]

    save_status = @journal_entry.save

    if save_status == true
      redirect_to("/journal_entries/#{@journal_entry.id}", :notice => "Journal entry created successfully.")
    else
      render("journal_entries/new.html.erb")
    end
  end

  def edit
    @journal_entry = JournalEntry.find(params[:id])

    render("journal_entries/edit.html.erb")
  end

  def update
    @journal_entry = JournalEntry.find(params[:id])

    @journal_entry.date_of_link = params[:date_of_link]
    @journal_entry.type_of_link = params[:type_of_link]
    @journal_entry.full_name = params[:full_name]
    @journal_entry.reason = params[:reason]
    @journal_entry.notes = params[:notes]
    @journal_entry.user_id = params[:user_id]
    @journal_entry.friend_id = params[:friend_id]

    save_status = @journal_entry.save

    if save_status == true
      redirect_to("/journal_entries/#{@journal_entry.id}", :notice => "Journal entry updated successfully.")
    else
      render("journal_entries/edit.html.erb")
    end
  end

  def destroy
    @journal_entry = JournalEntry.find(params[:id])

    @journal_entry.destroy

    if URI(request.referer).path == "/journal_entries/#{@journal_entry.id}"
      redirect_to("/", :notice => "Journal entry deleted.")
    else
      redirect_to(:back, :notice => "Journal entry deleted.")
    end
  end
end
