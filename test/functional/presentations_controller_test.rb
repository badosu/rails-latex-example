require 'test_helper'

class PresentationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Presentation.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Presentation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Presentation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to presentation_url(assigns(:presentation))
  end

  def test_edit
    get :edit, :id => Presentation.first
    assert_template 'edit'
  end

  def test_update_invalid
    Presentation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Presentation.first
    assert_template 'edit'
  end

  def test_update_valid
    Presentation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Presentation.first
    assert_redirected_to presentation_url(assigns(:presentation))
  end

  def test_destroy
    presentation = Presentation.first
    delete :destroy, :id => presentation
    assert_redirected_to presentations_url
    assert !Presentation.exists?(presentation.id)
  end
end
