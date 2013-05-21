require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe GenerationsController do

  # This should return the minimal set of attributes required to create a valid
  # Generation. As you add validations to Generation, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GenerationsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all generations as @generations" do
      generation = Generation.create! valid_attributes
      get :index, {}, valid_session
      assigns(:generations).should eq([generation])
    end
  end

  describe "GET show" do
    it "assigns the requested generation as @generation" do
      generation = Generation.create! valid_attributes
      get :show, {:id => generation.to_param}, valid_session
      assigns(:generation).should eq(generation)
    end
  end

  describe "GET new" do
    it "assigns a new generation as @generation" do
      get :new, {}, valid_session
      assigns(:generation).should be_a_new(Generation)
    end
  end

  describe "GET edit" do
    it "assigns the requested generation as @generation" do
      generation = Generation.create! valid_attributes
      get :edit, {:id => generation.to_param}, valid_session
      assigns(:generation).should eq(generation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Generation" do
        expect {
          post :create, {:generation => valid_attributes}, valid_session
        }.to change(Generation, :count).by(1)
      end

      it "assigns a newly created generation as @generation" do
        post :create, {:generation => valid_attributes}, valid_session
        assigns(:generation).should be_a(Generation)
        assigns(:generation).should be_persisted
      end

      it "redirects to the created generation" do
        post :create, {:generation => valid_attributes}, valid_session
        response.should redirect_to(Generation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved generation as @generation" do
        # Trigger the behavior that occurs when invalid params are submitted
        Generation.any_instance.stub(:save).and_return(false)
        post :create, {:generation => {}}, valid_session
        assigns(:generation).should be_a_new(Generation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Generation.any_instance.stub(:save).and_return(false)
        post :create, {:generation => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested generation" do
        generation = Generation.create! valid_attributes
        # Assuming there are no other generations in the database, this
        # specifies that the Generation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Generation.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => generation.to_param, :generation => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested generation as @generation" do
        generation = Generation.create! valid_attributes
        put :update, {:id => generation.to_param, :generation => valid_attributes}, valid_session
        assigns(:generation).should eq(generation)
      end

      it "redirects to the generation" do
        generation = Generation.create! valid_attributes
        put :update, {:id => generation.to_param, :generation => valid_attributes}, valid_session
        response.should redirect_to(generation)
      end
    end

    describe "with invalid params" do
      it "assigns the generation as @generation" do
        generation = Generation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Generation.any_instance.stub(:save).and_return(false)
        put :update, {:id => generation.to_param, :generation => {}}, valid_session
        assigns(:generation).should eq(generation)
      end

      it "re-renders the 'edit' template" do
        generation = Generation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Generation.any_instance.stub(:save).and_return(false)
        put :update, {:id => generation.to_param, :generation => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested generation" do
      generation = Generation.create! valid_attributes
      expect {
        delete :destroy, {:id => generation.to_param}, valid_session
      }.to change(Generation, :count).by(-1)
    end

    it "redirects to the generations list" do
      generation = Generation.create! valid_attributes
      delete :destroy, {:id => generation.to_param}, valid_session
      response.should redirect_to(generations_url)
    end
  end

end