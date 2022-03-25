function y = combinatie_semnale(key)
switch (key)
      case 1
        y=sin(2*pi*1209*t)+sin(2*pi*697*t)
      case 2
         y=sin(2*pi*1336*t)+sin(2*pi*697*t)
      case 3
        y=sin(2*pi*1477*t)+sin(2*pi*697*t)
      case 'A'
        y=sin(2*pi*1633*t)+sin(2*pi*697*t)
      case 4
        y=sin(2*pi*1209*t)+sin(2*pi*770*t)
      case 5
        y=sin(2*pi*1336*t)+sin(2*pi*770*t)
      case 6
        y=sin(2*pi*1477*t)+sin(2*pi*770*t)
      case 'B'
        y=sin(2*pi*1633*t)+sin(2*pi*770*t)
      case 7
        y=sin(2*pi*1209*t)+sin(2*pi*852*t)
      case 8
        y=sin(2*pi*1336*t)+sin(2*pi*852*t)
      case 9
        y=sin(2*pi*1477*t)+sin(2*pi*852*t)
      case 'C'
        y=sin(2*pi*1633*t)+sin(2*pi*852*t)
      case '*'
        y=sin(2*pi*1209*t)+sin(2*pi*941*t)
      case 0
        y=sin(2*pi*1336*t)+sin(2*pi*941*t)
      case '#'
        y=sin(2*pi*1477*t)+sin(2*pi*941*t)
      case 'D'
        y=sin(2*pi*1633*t)+sin(2*pi*941*t)
end
end