class DiseaseControl
  def evaluate(groups, target_symptoms)
    result = Array.new
    groups.split.select do |gr|
      if gr == target_symptoms
        result << target_symptoms
      end
    end
    result.count
  end
end