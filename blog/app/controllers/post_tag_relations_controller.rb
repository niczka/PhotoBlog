class PostTagRelationsController < ApplicationController
  # GET /post_tag_relations
  # GET /post_tag_relations.xml
  def index
    @post_tag_relations = PostTagRelation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post_tag_relations }
    end
  end

  # GET /post_tag_relations/1
  # GET /post_tag_relations/1.xml
  def show
    @post_tag_relation = PostTagRelation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post_tag_relation }
    end
  end

  # GET /post_tag_relations/new
  # GET /post_tag_relations/new.xml
  def new
    @post_tag_relation = PostTagRelation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post_tag_relation }
    end
  end

  # GET /post_tag_relations/1/edit
  def edit
    @post_tag_relation = PostTagRelation.find(params[:id])
  end

  # POST /post_tag_relations
  # POST /post_tag_relations.xml
  def create
    @post_tag_relation = PostTagRelation.new(params[:post_tag_relation])

    respond_to do |format|
      if @post_tag_relation.save
        format.html { redirect_to(@post_tag_relation, :notice => 'Post tag relation was successfully created.') }
        format.xml  { render :xml => @post_tag_relation, :status => :created, :location => @post_tag_relation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post_tag_relation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post_tag_relations/1
  # PUT /post_tag_relations/1.xml
  def update
    @post_tag_relation = PostTagRelation.find(params[:id])

    respond_to do |format|
      if @post_tag_relation.update_attributes(params[:post_tag_relation])
        format.html { redirect_to(@post_tag_relation, :notice => 'Post tag relation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post_tag_relation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post_tag_relations/1
  # DELETE /post_tag_relations/1.xml
  def destroy
    @post_tag_relation = PostTagRelation.find(params[:id])
    @post_tag_relation.destroy

    respond_to do |format|
      format.html { redirect_to(post_tag_relations_url) }
      format.xml  { head :ok }
    end
  end
end
