# require modules here
require 'yaml'
require 'pry'


def load_library(file)
  array = YAML.load(File.read(file))
  result = array.each_with_object({}) do |(key, value), final_array|
      final_array
      if !final_array[key]
        final_array[key] = {}
        final_array[key][:english] = value[0]
        final_array[key][:japanese] = value[1]
      end
  end
  return result
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end