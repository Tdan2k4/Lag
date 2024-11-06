-- Tắt hiệu ứng ánh sáng và đổ bóng trong game để giảm tải
game.Lighting.GlobalShadows = false -- Tắt bóng toàn cục
game.Lighting.Ambient = Color3.fromRGB(100, 100, 100) -- Giảm độ sáng môi trường

-- Tắt một số hiệu ứng đặc biệt
game.Lighting.BlurEffect.Enabled = false  -- Tắt hiệu ứng mờ
game.Lighting.ColorCorrection.Enabled = false -- Tắt hiệu ứng chỉnh màu

-- Ẩn các đối tượng không cần thiết trong game (cảnh vật, v.v.)
for _, obj in pairs(workspace:GetChildren()) do
    if obj:IsA("Part") or obj:IsA("MeshPart") then
        obj.CanCollide = false  -- Tắt va chạm để giảm tải
        obj.Transparency = 1     -- Ẩn đối tượng để giảm tải đồ họa
    end
end
