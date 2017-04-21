def ftoc(temp)
  return ((temp - 32) * (5.0/9.0)).to_i if temp.is_a? Integer
  return (temp - 32.0) * (5.0/9.0) if temp.is_a? Float
end

def ctof(temp)
  return temp * 1.8 + 32 if temp.is_a? Integer
  return temp * 1.8 + 32 if temp.is_a? Float
end
