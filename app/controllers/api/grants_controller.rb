class Api::GrantsController < ApplicationController

  def index
    @grants = Grant.all

    @grants = @grants.order(id: :asc)
    
    render 'index.json.jb'
    
  end 

  def create
    @grant = Grant.new(
                        name: params[:name],
                        purpose: params[:purpose],
                        funding_org: params[:funding_org],
                        funding_org_website: params[:funding_org_website],
                        funding_org_rfp_webpage: params[:funding_org_rfp_webpage],
                        deadline: params[:deadline],
                        date_submitted: params[:date_submitted],
                        organization_id: params[:organization_id].to_i
                      )
    if @grant.save
      (0..8).each_with_index do |cat_num, index|
        Section.create(category: cat_num,
                        order: index + 1,
                        grant_id: @grant.id 
                        )
      end 
      render "show.json.jb"
    else
      render json: {errors: @grant.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def copy
    grant = Grant.find(params[:id])
    puts "A"
    copy_grant = Grant.new(
                        name: grant.name,
                        purpose: grant.purpose,
                        funding_org: grant.funding_org,
                        funding_org_website: grant.funding_org_website,
                        funding_org_rfp_webpage: grant.funding_org_rfp_webpage,
                        deadline: grant.deadline,
                        date_submitted: grant.date_submitted,
                        organization_id: grant.organization_id
                      )
    if copy_grant.save
      sections = grant.sections.order(category: :asc).all
      puts sections
      (0..8).each_with_index do |cat_num, index|
        Section.create(category: cat_num,
                        order: index + 1,
                        content: sections[index].content,
                        grant_id: copy_grant.id 
                        )
      end 
      @grant = copy_grant
      # redirect_to action: "show", id: copy_grant.id
      render "show.json.jb"
    else
      puts "B"
      render json: {errors: copy_grant.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @grant = Grant.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @grant = Grant.find(params[:id])

    @grant.name = params[:name] || @grant.name
    @grant.purpose = params[:purpose] || @grant.purpose
    @grant.funding_org = params[:funding_org] || @grant.funding_org
    @grant.funding_org_website = params[:funding_org_website] || @grant.funding_org_website
    @grant.funding_org_rfp_webpage = params[:funding_org_rfp_webpage] || @grant.funding_org_rfp_webpage
    @grant.deadline = params[:deadline] || @grant.deadline
    @grant.date_submitted = params[:date_submitted] || @grant.date_submitted
    @grant.organization_id = params[:organization_id] || @grant.organization_id

    @grant.save
    render 'show.json.jb'
  end

  def destroy
    grant = Grant.find(params[:id])
    grant.destroy
    render json: {message: "Grant successfully destroyed"}
  end
end
