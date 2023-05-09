require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url, as: :json
    assert_response :success
  end

  test "should create recipe" do
    assert_difference("Recipe.count") do
      post recipes_url, params: { recipe: { approved: @recipe.approved, country_of_origin: @recipe.country_of_origin, description: @recipe.description, ingredients: @recipe.ingredients, instructions: @recipe.instructions, is_local: @recipe.is_local, number_of_people_served: @recipe.number_of_people_served, recipe_category: @recipe.recipe_category, recipe_name: @recipe.recipe_name, recipe_thumb: @recipe.recipe_thumb, user_id: @recipe.user_id, youtube_code: @recipe.youtube_code } }, as: :json
    end

    assert_response :created
  end

  test "should show recipe" do
    get recipe_url(@recipe), as: :json
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { approved: @recipe.approved, country_of_origin: @recipe.country_of_origin, description: @recipe.description, ingredients: @recipe.ingredients, instructions: @recipe.instructions, is_local: @recipe.is_local, number_of_people_served: @recipe.number_of_people_served, recipe_category: @recipe.recipe_category, recipe_name: @recipe.recipe_name, recipe_thumb: @recipe.recipe_thumb, user_id: @recipe.user_id, youtube_code: @recipe.youtube_code } }, as: :json
    assert_response :success
  end

  test "should destroy recipe" do
    assert_difference("Recipe.count", -1) do
      delete recipe_url(@recipe), as: :json
    end

    assert_response :no_content
  end
end
