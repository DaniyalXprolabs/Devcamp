class PortfoliosController < ApplicationController
    before_action :getPortfolioId, only:[:show, :edit, :update,:destroy]
    def index
        @portfolios=Portfolio.all
    end

    def angularitems
        @portfolios_angular=Portfolio.angular
    end

    def new
        @portfolio=Portfolio.new
    end

    def create
        @portfolio=Portfolio.create(portfolio_params)
        if @portfolio.save
            flash[:notice]="Portfolio created Successfully"
            redirect_to portfolios_path
        else
            render 'new'
        end
    end

    def edit

    end

    def show
        
    end

    def destroy
        @portfolio.destroy
        redirect_to portfolios_path
    end

    def update
        if @portfolio.update(portfolio_params)
            flash[:notice] = "Portfolio is updated Successfully"
            redirect_to portfolios_path
        else
            render 'edit'
        end
    end

    private
    def getProtfolioId
        @portfolio=Portfolio.find(params[:id])
    end

    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle,:body)
    end

    def getPortfolioId
        @portfolio=Portfolio.find(params[:id])
    end
end
