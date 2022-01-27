-- Hacky fix for enemies getting suppressed after taking any damage
local build_suppression_orig = CopDamage.build_suppression
function CopDamage:build_suppression(amount, ...)
    if amount ~= "max" then
        return build_suppression_orig(self, amount, ...)
    end
end