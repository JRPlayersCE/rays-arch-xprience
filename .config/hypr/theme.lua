-- Paleta Everforest (Dark)
local everforest = {
	bg_dim = "rgba(1e2326ff)",
	bg0 = "rgba(272e33ff)",
	bg1 = "rgba(2e383eff)",
	bg_inactive = "rgba(4c555baa)", -- Cinza/Verde escuro para bordas inativas
	shadow = 0xee1e2326, -- Cor de sombra baseada no bg_dim
	green = "rgba(a7c080ee)", -- Cor ativa principal
	aqua = "rgba(83c092ee)", -- Cor ativa secundária
	blue = "rgba(7fbbb3ee)",
}

hl.config({
	general = {
		gaps_in = 10,
		gaps_out = 15,

		border_size = 2,

		col = {
			-- Gradiente entre o Verde e Aqua do Everforest para a janela ativa
			active_border = { colors = { everforest.green, everforest.aqua }, angle = 45 },
			-- Cor suave para janelas inativas
			inactive_border = everforest.bg_inactive,
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,

		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
		allow_tearing = false,

		layout = "dwindle",
	},

	decoration = {
		rounding = 10,
		rounding_power = 20,

		-- Transparency ajustada para o estilo suave do Everforest
		active_opacity = 1.0,
		inactive_opacity = 0.9,

		shadow = {
			enabled = true,
			range = 15,
			render_power = 3,
			color = everforest.bg_inactive,
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })
hl.curve("fast", { type = "spring", mass = 1, stiffness = 500, dampening = 35 })
hl.curve("pop", { type = "spring", mass = 1, stiffness = 400, dampening = 24.21279333 })


hl.animation({ leaf = "global", enabled = true, speed = 5, spring = "easy" })
hl.animation({ leaf = "border", enabled = true, speed = 1, spring = "easy" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 1, spring = "pop" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1, bezier = "quick" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1, spring = "pop" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1, spring = "fast" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })
