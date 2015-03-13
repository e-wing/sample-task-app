require 'test_helper'

class MilestoneTemplatesControllerTest < ActionController::TestCase
  setup do
    @milestone_template = milestone_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milestone_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milestone_template" do
    assert_difference('MilestoneTemplate.count') do
      post :create, milestone_template: {  }
    end

    assert_redirected_to milestone_template_path(assigns(:milestone_template))
  end

  test "should show milestone_template" do
    get :show, id: @milestone_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milestone_template
    assert_response :success
  end

  test "should update milestone_template" do
    patch :update, id: @milestone_template, milestone_template: {  }
    assert_redirected_to milestone_template_path(assigns(:milestone_template))
  end

  test "should destroy milestone_template" do
    assert_difference('MilestoneTemplate.count', -1) do
      delete :destroy, id: @milestone_template
    end

    assert_redirected_to milestone_templates_path
  end
end
