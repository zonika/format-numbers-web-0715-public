def separate_with_comma(num)
  n = num.to_s.reverse
  if n.length > 3
    a = n.split(/(\d{3})/)
    a.delete('')
    n = a.join(',')
  end
  n.reverse
end
