return {
  'sphamba/smear-cursor.nvim',
  event = "VeryLazy",
  -- stylua: ignore
  opts = { -- Default  Range
    enabled = true,
    smear_between_buffers = false,
    stiffness = 0.9,
    trailing_stiffness = 0.8,
    distance_stop_animating = 0.3,
  },
}
