class ExpensesController < ApplicationController

    def index
        render :json => Expense.all
    end

    def show
        render :json => Expense.find(params[:id])
    end

    def create
        render :json => Expense.create!(params)
    end

    def update
        expense = Expense.find(params[:id])
        expense.update_attributes!(params)
        render :json => expense
    end

    def destroy
        expense = Expense.find(params[:id])
        expense.destroy
        render :json => expense
    end
end
