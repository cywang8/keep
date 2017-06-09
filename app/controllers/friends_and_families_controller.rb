class FriendsAndFamiliesController < ApplicationController
  def index
    @friends_and_families = FriendsAndFamily.all

    render("friends_and_families/index.html.erb")
  end

  def show
    @friends_and_family = FriendsAndFamily.find(params[:id])

    render("friends_and_families/show.html.erb")
  end
    
  def home
    render("friends_and_families/home.html.erb")
  end

  def new
    @friends_and_family = FriendsAndFamily.new

    render("friends_and_families/new.html.erb")
  end

  def create
    @friends_and_family = FriendsAndFamily.new

    @friends_and_family.name = params[:name]
    @friends_and_family.relationship = params[:relationship]
    @friends_and_family.birthday = params[:birthday]
    @friends_and_family.current_employer_or_school = params[:current_employer_or_school]
    @friends_and_family.address = params[:address]
    @friends_and_family.phone_number = params[:phone_number]
    @friends_and_family.email = params[:email]

    save_status = @friends_and_family.save

    if save_status == true
      redirect_to("/friends_and_families/#{@friends_and_family.id}", :notice => "Friends and family created successfully.")
    else
      render("friends_and_families/new.html.erb")
    end
  end

  def edit
    @friends_and_family = FriendsAndFamily.find(params[:id])

    render("friends_and_families/edit.html.erb")
  end

  def update
    @friends_and_family = FriendsAndFamily.find(params[:id])

    @friends_and_family.name = params[:name]
    @friends_and_family.relationship = params[:relationship]
    @friends_and_family.birthday = params[:birthday]
    @friends_and_family.current_employer_or_school = params[:current_employer_or_school]
    @friends_and_family.address = params[:address]
    @friends_and_family.phone_number = params[:phone_number]
    @friends_and_family.email = params[:email]

    save_status = @friends_and_family.save

    if save_status == true
      redirect_to("/friends_and_families/#{@friends_and_family.id}", :notice => "Friends and family updated successfully.")
    else
      render("friends_and_families/edit.html.erb")
    end
  end

  def destroy
    @friends_and_family = FriendsAndFamily.find(params[:id])

    @friends_and_family.destroy

    if URI(request.referer).path == "/friends_and_families/#{@friends_and_family.id}"
      redirect_to("/", :notice => "Friends and family deleted.")
    else
      redirect_to(:back, :notice => "Friends and family deleted.")
    end
  end
end