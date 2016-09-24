tds = require 'tds'
a = tds.Hash()
b = tds.Vec()

require 'cutorch'
c = torch.randn(3, 4):cuda()
assert(torch.typename(c) == "torch.CudaTensor", "cutorch vector isn't CudaTensor")

a[0] = c
b:insert(c)

assert(a[0] == b[0], "Data isn't being stored correctly")

print('OK')
