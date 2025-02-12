local colors = {
 ying = '#132028',
 argent1 = '#4e585c',
 argent2 = '#899090',
 argent3 = '#c4c8c4',
 yang = '#fffef6',
 aurum = '#f8c067',
 sakura = '#f7c2e6', -- Japan, さくら
 sumei = '#ff5871', -- China, 苏梅
 pompadour = '#ff83a8', -- France, pompadour
 korall = '#fe8860', -- Russia, коралл
 asqar = '#eedd85', -- Arabia, أشقر
 limon = '#f8fc5d', -- Spain, limón
 piruze = '#3fdee2', -- Persia, پیروزه
 byeok = '#3288d3', -- Korea, 청벽(靑碧)
}

return {
  normal = {
    a = {bg = colors.yang, fg = colors.ying, gui = 'bold'},
    b = {bg = colors.argent2, fg = colors.yang},
    c = {bg = colors.argent1, fg = colors.argent3}
  },
  insert = {a = {bg = colors.piruze, fg = colors.ying, gui = 'bold'}},
  visual = {a = {bg = colors.byeok, fg = colors.yang, gui = 'bold'}},
  command = {a = {bg = colors.aurum, fg = colors.ying, gui = 'bold'}},
  inactive = {
    a = {bg = colors.argent1, fg = colors.argent3, gui = 'bold'},
    b = {bg = colors.argent1, fg = colors.argent3},
    c = {bg = colors.argent1, fg = colors.argent3}
  }
}
