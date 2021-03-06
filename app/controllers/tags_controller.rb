class TagsController < ApplicationController
    before_filter :require_login, only: [:destroy]
    
    def show
        @tag = Tag.find(params[:id])
    end

    def index
        @tags = Tag.all
    end

    def destroy
        @tag = Tag.destroy(params[:id])  
        flash.notice = "Tag '#{@tag.title}' Destroyed!"    
        redirect_to tag_path(@tag)
    end
end
