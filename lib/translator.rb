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


def get_japanese_emoticon(file, string)

end

def get_english_meaning(file, string)
  data = load_library(file)
  data.each do |key, value|
    value.each do |inner_key, inner_value|
      japanese = value[:japanese]
      english = value[:english]
      if japanese == string
        return english
      end
    end
  end
end