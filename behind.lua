-- Copyright (c) 2022, rjt
-- All rights reserved.

-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions are met:

--     * Redistributions of source code must retain the above copyright
--     notice, this list of conditions and the following disclaimer.
--     * Redistributions in binary form must reproduce the above copyright
--     notice, this list of conditions and the following disclaimer in the
--     documentation and/or other materials provided with the distribution.
--     * Neither the name of "behind" nor the
--     names of its contributors may be used to endorse or promote products
--     derived from this software without specific prior written permission.

-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
-- ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
-- WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-- DISCLAIMED. IN NO EVENT SHALL <your name> BE LIABLE FOR ANY
-- DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-- (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
-- LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-- ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

_addon.name = "Behind"
_addon.author = "rjt"
_addon.version = "1.0"
_addon.commands = {"behind"}

require('images')
require('tables')
math = require('math')

do_event = nil

-- pi / 2 radians for a 90 degree zone
behind_angle = math.pi / 2

function display_icon()
    -- get target position (x/y) and heading
    -- get player position (x/y)
    -- if player position is within radians of the behind angle, display an image
    -- else display no image, or a no symbol?
end

function calculate_if_behind(target_x, target_y, target_heading, player_x, player_y)
    -- 
end

windower.register_event('target change', function(idx)
    local t = windower.ffxi.get_mob_by_index(idx)

    -- only draw/calculate if we have a valid target
    if t then
        do_event = windower.register_event('prerender', display_icon)
    else
        windower.unregister_event(do_event)
    end
end)
