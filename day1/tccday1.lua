-- title:   game title
-- author:  game developer, email, etc.
-- desc:    short description
-- site:    website link
-- license: MIT License (change this to your license of choice)
-- version: 0.1
-- script:  lua

b, c = {}, 2

for i = 1, 4 do
    for j = -10 * (i - 1), 10 * (i - 1), 10 do
        table.insert(b, {120 + 4 + j, 26 + i * 15})
    end
end

function TIC()
    cls(8)
    c = c + 1
    for i = 1, 500 do pix(math.random(240), math.random(101), 12) end
    rect(0, 116, 240, 20, 12)
    rect(0, 106, 240, 10, 12)
    rect(120, 96, 10, 10, 3)
    
    for i = 0, 3 do
        tri(125 - 40 + i * 5, 96 - i * 10, 125, 96 - 40 - i * 10, 125 + 40 - i * 5, 96 - i * 10, 6)
    end
    line(124, 23, 124, 27, 4)
    line(125, 23, 125, 27, 4)
    circb(124, 24, 10, 4)
    
    for _, v in ipairs(b) do
        circ(v[1], v[2], 3, 1 + c % 15)
    end
end


-- <TILES>
-- 001:eccccccccc888888caaaaaaaca888888cacccccccacc0ccccacc0ccccacc0ccc
-- 002:ccccceee8888cceeaaaa0cee888a0ceeccca0ccc0cca0c0c0cca0c0c0cca0c0c
-- 003:eccccccccc888888caaaaaaaca888888cacccccccacccccccacc0ccccacc0ccc
-- 004:ccccceee8888cceeaaaa0cee888a0ceeccca0cccccca0c0c0cca0c0c0cca0c0c
-- 017:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 018:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- 019:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 020:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- </TILES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

