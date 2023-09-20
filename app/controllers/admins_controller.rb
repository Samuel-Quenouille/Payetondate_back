class AdminsController < ApplicationController
    def show
        @places_false = Place.where(is_validate: false)
        @testimonies_false = Testimony.where(is_validate: false)
    end

    def update_place
        @place = Place.find(params[:id])
        if @place.update(is_validate: true)
            redirect_to admin_path, notice: "Le lieu a été validé avec succès."
        else
            flash[:error] = "La validation du lieu a échoué."
            render :show
        end
    end

    def update_testimony
        @testimony = Testimony.find(params[:id])
        if @testimony.update(is_validate: true)
            redirect_to admin_path, notice: "Le témoignage a été validé avec succès."
        else
            flash[:error] = "La validation du témoignage a échoué."
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
