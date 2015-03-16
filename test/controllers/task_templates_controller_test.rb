require 'test_helper'

class TaskTemplatesControllerTest < ActionController::TestCase
  setup do
    @task_template = task_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_template" do
    assert_difference('TaskTemplate.count') do
      post :create, task_template: {  }
    end

    assert_redirected_to task_template_path(assigns(:task_template))
  end

  test "should show task_template" do
    get :show, id: @task_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_template
    assert_response :success
  end

  test "should update task_template" do
    patch :update, id: @task_template, task_template: {  }
    assert_redirected_to task_template_path(assigns(:task_template))
  end

  test "should destroy task_template" do
    assert_difference('TaskTemplate.count', -1) do
      delete :destroy, id: @task_template
    end

    assert_redirected_to task_templates_path
  end
end
