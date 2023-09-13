class AdminsController < ApplicationController
    def show
        @places_false = Place.where(is_validate: false)
        @testimonies_false = Testimony.where(is_validate: false)
    end

    def update
        @place = Place.find(params[:id])
        @testimony = Testimony.find(params[:id])
        if @place.update(is_validate: true) && @testimony.update(is_validate: true)
            redirect_to admin_path, notice: "L'événement a été mis à jour avec succès."
        else
            flash[:error] = "La mise à jour de l'événement a échoué."
            render :show
        end
    end

    def destroy
        @place = Place.find(params[:id])
        @testimony = Testimony.find(params[:id])
        @place.destroy
        @testimony.destroy
        redirect_to admin_path(current_user.id)
    end

    private

    def place_params
        params.require(:place).permit(:is_validate)
    end

    def testimony_params
        params.require(:testimony).permit(:is_validate)
    end
end
