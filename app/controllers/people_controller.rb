
  class PeopleController < ApplicationController
    def index
      people = Person.all
      render json: people.as_json
    end

    def create
      person = Person.new(
        name: params[:name],
        bio: params[:bio],
        image: params[:image],
        lat: params[:lat],
        lng: params[:lng]
      )
      if person.save
        render json: person.as_json
      else
        render json: { errors: person.errors.full_messages }, status: :bad_request
      end
    end
  end

  def show
    person = Person.find_by(id: params[:id])
    render json: person.as_json
  end


  



