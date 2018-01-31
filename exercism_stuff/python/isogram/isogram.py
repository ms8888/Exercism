def is_isogram(string):
  import collections
  iso = True
  notIso = True 
  
  if len(string) >= 26:
    return True
  else:
    string = string.translate(None, '-')
    string = string.replace(" ","")
    letterCount = collections.Counter(string.lower())
    for key, value in letterCount.items():
      if value >= 2:
        notIso = False
      else:
        iso = True
    
    return (iso and notIso)
      

  