# frozen_string_literal: true

class EnglishController < ApplicationController
  def check
    non_english = []
    text_without_punctuation = params[:text].tr('^A-z', ' ')
    text_without_punctuation.split.each do |word|
      non_english << word unless word.capitalize.in? DictionaryReader::DICTIONARY
    end
    render json: { words: non_english }
  end
end
