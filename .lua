-- Decompiled with the Synapse X Luau decompiler.

local l__Parent__1 = script.Parent.Parent;
local v2 = require(l__Parent__1:WaitForChild("Variables"));
local u1 = {
	changableToolPoses = { "DefaultHold", "DefaultHoldFar", "LunchTrayHold", "LaptopHold", "AssaultHold", "ShotgunHold", "PistolHold", "RodHandHold", "ExtinguishHold", "FoodMenuHold" }, 
	gunIndex = nil, 
	setToolPoses = {}, 
	pendingToolPose = nil
};
local u2 = {};
local u3 = "";
local u4 = false;
local u5 = 2;
local u6 = false;
local u7 = require(l__Parent__1:WaitForChild("Globals"));
local function u8(p1, p2)
	local v3 = p2 or v2.houseEditDistance;
	local v4 = nil;
	local v5 = v2.InputService:GetMouseLocation();
	local v6 = v2.Camera:ViewportPointToRay(v5.x, v5.y, 0);
	if u1.gunIndex and u1.gunIndex.spreadAngle > 0 then
		local v7 = (v2.CFrameNew(v2.Vector3New(), v6.Direction) * (v2.CFrameAngles(0, 0, v2.MathRad(v2.Random:NextNumber(0, 360))) * v2.CFrameAngles(v2.Random:NextNumber(0, 1) * v2.MathRad(u1.gunIndex.spreadAngle), 0, 0))).lookVector;
	else
		v7 = v6.Direction;
	end;
	local v8, v9 = workspace:FindPartOnRayWithIgnoreList(Ray.new(v2.Camera.CFrame.p, v7 * v3), v2.MouseTargetFilter);
	if v8 and not v8.Parent:FindFirstChild("IsATool") then
		v4 = p1 + (v9 - p1).unit * v3;
	elseif p1 and v3 then
		local v10 = p1 + v7 * v3;
		v4 = v10;
		v9 = v10;
	end;
	return v4, v9;
end;
local function u9(p3, p4, p5, p6)
	if not p3 then
		u6 = false;
		return;
	end;
	local l__AttachJoint__11 = p3:FindFirstChild("AttachJoint");
	local l__Clip__12 = p3:FindFirstChild("Clip");
	local l__Cartridge__13 = p3:FindFirstChild("Cartridge");
	local v14 = l__AttachJoint__11 and l__AttachJoint__11:FindFirstChild("BarrelAttachment");
	if not v14 then
		u6 = false;
		return;
	end;
	if not (u1.gunIndex.currentAmmo <= 0) then
		u6 = false;
		return;
	end;
	u1.gunIndex.isReloading = true;
	if l__Clip__12 then
		l__Clip__12.Transparency = 1;
	end;
	if l__Cartridge__13 then
		l__Cartridge__13.Transparency = 1;
	end;
	local v15 = {};
	local v16 = {};
	v16[1] = "End";
	v16[2] = function()
		u1.gunIndex.isReloading = false;
		u1.gunIndex.hasShot = false;
		u6 = false;
		u1.gunIndex.currentAmmo = u1.gunIndex.maxAmmo;
		if p6 then
			p6();
		end;
	end;
	local v17 = {};
	local l__Shell__10 = p3:FindFirstChild("Shell");
	v17[1] = "ShowShell";
	v17[2] = function()
		if l__Shell__10 then
			l__Shell__10.Transparency = 0;
		end;
	end;
	local v18 = {};
	v18[1] = "HideShell";
	v18[2] = function()
		if l__Shell__10 then
			l__Shell__10.Transparency = 1;
			v14.shell:Play();
		end;
	end;
	local v19 = {};
	local l__FakeCartridge__11 = p3:FindFirstChild("FakeCartridge");
	v19[1] = "ShowCartridge";
	v19[2] = function()
		if l__FakeCartridge__11 then
			l__FakeCartridge__11.Transparency = 0;
		end;
	end;
	local v20 = {};
	v20[1] = "HideCartridge";
	v20[2] = function()
		if l__FakeCartridge__11 then
			l__FakeCartridge__11.Transparency = 1;
		end;
		if l__Cartridge__13 then
			l__Cartridge__13.Transparency = 0;
			v14.clip:Play();
		end;
	end;
	local v21 = {};
	local l__FakeClip__12 = p3:FindFirstChild("FakeClip");
	v21[1] = "ClipShow";
	v21[2] = function()
		if l__FakeClip__12 then
			l__FakeClip__12.Transparency = 0;
		end;
	end;
	local v22 = {};
	v22[1] = "ClipHide";
	v22[2] = function()
		if l__FakeClip__12 then
			l__FakeClip__12.Transparency = 1;
		end;
		if l__Clip__12 then
			l__Clip__12.Transparency = 0;
			v14.clip:Play();
		end;
	end;
	v15[1] = v16;
	v15[2] = v17;
	v15[3] = v18;
	v15[4] = v19;
	v15[5] = v20;
	v15[6] = v21;
	v15[7] = v22;
	u7.InitPlrAnimation(p4, "ToolAnimation", { p4, p5 }, v15);
end;
local function u13(p7)
	local l__AttachJoint__23 = p7:FindFirstChild("AttachJoint");
	if not l__AttachJoint__23 then
		return;
	end;
	if v2.figHumanoid and (v2.figHumanoid.Health <= 0 or v2.figHumanoid.PlatformStand) then
		return;
	end;
	if not u1.gunIndex.isReloading and v2.toolTriggerHoldingDown then
		local v24 = {};
		local v25 = {};
		v25[1] = "End";
		v25[2] = function()
			if not u1.gunIndex.isReloading then
				u1.gunIndex.currentAmmo = u1.gunIndex.currentAmmo - 1;
				local l__WorldPosition__26 = l__AttachJoint__23.BarrelAttachment.WorldPosition;
				local v27 = u8(l__WorldPosition__26, u1.gunIndex.projectileDistance);
				local v28 = {};
				for v29 = 1, u1.gunIndex.projectileCount do
					table.insert(v28, {
						projectileType = u1.gunIndex.projectileType, 
						startPos = l__WorldPosition__26, 
						crosshairPos = u8(l__WorldPosition__26, u1.gunIndex.projectileDistance), 
						projectileSpeed = u1.gunIndex.projectileSpeed, 
						projectileDistance = u1.gunIndex.projectileDistance
					});
				end;
				u1.projectileShot({
					Tool = p7, 
					Projectiles = v28
				});
				if u1.gunIndex.currentAmmo <= 0 then
					u7.InitPlrAnimation("", "ToolAnimation", { "AssaultShoot" });
					u9(p7, "AssaultReload", "AssaultHold", function()
						u13(p7);
					end);
				end;
			end;
		end;
		v24[1] = v25;
		u7.InitPlrAnimation("AssaultShoot", "ToolAnimation", { "AssaultHold", "AssaultShoot", "AssaultReload" }, v24);
		return;
	end;
	if not v2.toolTriggerHoldingDown then
		u7.InitPlrAnimation(p7 and u1.setToolPoses[p7.Name] and "AssaultHold", "ToolAnimation", { "AssaultHold", "AssaultShoot" });
	end;
end;
local u14 = nil;
function u1.dispenseFountain(p8, p9, p10)
	local l__cup__30 = p8.cup;
	local l__dispenser__31 = p8.dispenser;
	local l__fountainType__32 = p8.fountainType;
	local v33 = l__cup__30 and l__cup__30:FindFirstChild("Properties");
	local v34 = v33 and v33:FindFirstChild("FountainType");
	local v35 = v33 and v33:FindFirstChild("IsLidOpen");
	local v36 = v33 and v33:FindFirstChild("IsFilled");
	local v37 = v33 and v33:FindFirstChild("MaxDrinkAmount");
	local l__Spill__38 = l__dispenser__31:FindFirstChild("Spill");
	if l__Spill__38 and v34 and v34.Value == l__fountainType__32 and v35 and v36 then
		if (v35.Value or p9) and v36 and not v36.Value then
			v33.SipsLeft.Value = v37 and v37.Value or 14;
			v36.Value = true;
			if not p9 then
				v2.MainEvent:FireServer({
					Event = "PeerAction", 
					Action = "dispenseFountain", 
					cup = l__cup__30, 
					dispenser = l__dispenser__31, 
					fountainType = l__fountainType__32
				});
			end;
			l__Spill__38.Transparency = 0.1;
			task.wait(1.1);
			l__Spill__38.Transparency = 1;
			return;
		end;
		if not v35.Value and not v36.Value and not p9 and not p10 and v2.activeTool.tool == l__cup__30 then
			u6 = false;
			v2.toolTriggerHoldingDown = false;
			u1.PLASTICCUP(l__cup__30, v33, function()
				if v35.Value and v2.activeTool.tool == l__cup__30 then
					u1.dispenseFountain(p8, p9, true);
				end;
			end);
			return;
		end;
		if not p9 then
			u7.onInteractErr();
			return;
		end;
	elseif not p9 then
		u7.onInteractErr();
	end;
end;
function u1.replicateToolSound(p11, p12)
	local l__Tool__39 = p11.Tool;
	local l__SoundInstance__40 = p11.SoundInstance;
	local l__ShouldPlay__41 = p11.ShouldPlay;
	local l__ToPitch__42 = p11.ToPitch;
	if l__Tool__39 and l__Tool__39:IsA("Folder") and l__SoundInstance__40 and l__Tool__39:FindFirstChild("IsATool") and l__SoundInstance__40:IsDescendantOf(l__Tool__39) and (not l__ToPitch__42 or l__ToPitch__42 and l__ToPitch__42 < 3 and l__ToPitch__42 >= 1) then
		if l__ShouldPlay__41 then
			if p12 and v2.blockedUserIndex[p12.userId] then
				return;
			end;
			l__SoundInstance__40.Pitch = l__ToPitch__42 or l__SoundInstance__40.Pitch;
			l__SoundInstance__40:Play();
		else
			l__SoundInstance__40:Stop();
		end;
		if not p12 and not p11.DontReplicate then
			v2.MainEvent:FireServer({
				Event = "PeerAction", 
				Action = "replicateToolSound", 
				Tool = l__Tool__39, 
				SoundInstance = l__SoundInstance__40, 
				ShouldPlay = l__ShouldPlay__41, 
				ToPitch = l__ToPitch__42
			});
		end;
	end;
end;
function u1.setToolEmitter(p13, p14)
	local l__Tool__43 = p13.Tool;
	local l__ParticleName__44 = p13.ParticleName;
	local l__ToSet__45 = p13.ToSet;
	local l__EmitAmount__46 = p13.EmitAmount;
	if l__Tool__43 and l__Tool__43:IsA("Folder") and l__Tool__43:FindFirstChild("IsATool") and (not l__EmitAmount__46 or l__EmitAmount__46 and l__EmitAmount__46 < 100) then
		if l__ToSet__45 and p14 and v2.blockedUserIndex[p14.userId] then
			return;
		end;
		for v47, v48 in pairs(l__Tool__43:GetDescendants()) do
			if v48:IsA("ParticleEmitter") or v48:IsA("Beam") and v48.Name == l__ParticleName__44 then
				if not l__EmitAmount__46 then
					v48.Enabled = l__ToSet__45;
				else
					v48:Emit(l__EmitAmount__46);
				end;
			end;
		end;
		if not p14 then
			v2.MainEvent:FireServer({
				Event = "PeerAction", 
				Action = "setToolEmitter", 
				Tool = l__Tool__43, 
				ParticleName = l__ParticleName__44, 
				ToSet = l__ToSet__45, 
				EmitAmount = l__EmitAmount__46
			});
		end;
	end;
end;
local u15 = {
	CanopyPos1 = {
		Size = v2.Vector3New(0.905, 2.975, 0.905), 
		C0 = v2.CFrameNew(), 
		C1 = v2.CFrameNew(0.300643921, -0.736207962, -0.0225167274)
	}, 
	CanopyPos2 = {
		Size = v2.Vector3New(2.305, 2.375, 2.305), 
		C0 = v2.CFrameNew(), 
		C1 = v2.CFrameNew(0.300643921, -0.924477577, -0.0601067543)
	}, 
	CanopyPos3 = {
		Size = v2.Vector3New(4.305, 1.875, 4.305), 
		C0 = v2.CFrameNew(), 
		C1 = v2.CFrameNew(0.300643921, -1.14754772, -0.110603809)
	}, 
	CanopyPos4 = {
		Size = v2.Vector3New(6.467, 1.675, 6.305), 
		C0 = v2.CFrameNew(), 
		C1 = v2.CFrameNew(0.300643921, -1.24673271, -0.165603161)
	}
};
function u1.setUmbrellaCanopy(p15, p16)
	local l__tool__49 = p15.tool;
	local v50 = u15[p15.step];
	local v51 = l__tool__49 and (l__tool__49:IsA("Folder") and l__tool__49:FindFirstChild("Canopy"));
	local v52 = l__tool__49 and (l__tool__49:IsA("Folder") and (l__tool__49:FindFirstChild("AttachJoint") and l__tool__49:FindFirstChild("AttachJoint"):FindFirstChild("CanopyJoint")));
	if not p16 then
		v2.MainEvent:FireServer({
			Event = "PeerAction", 
			Action = "setUmbrellaCanopy", 
			tool = p15.tool, 
			step = p15.step
		});
	end;
	if v50 and v51 and v52 and l__tool__49:IsDescendantOf(workspace) and l__tool__49:FindFirstChild("IsATool") and v51.Size ~= v50.Size then
		v52.Part1 = nil;
		v52.C1 = v50.C1;
		v52.C0 = v50.C0;
		v51.Size = v50.Size;
		v52.Part1 = v51;
	end;
end;
function u1.cameraFlash(p17, p18)
	local l__Tool__53 = p17.Tool;
	local v54 = l__Tool__53 and (l__Tool__53:IsA("Folder") and l__Tool__53:FindFirstChild("AttachJoint"));
	local v55 = v54 and v54:FindFirstChild("Attachment");
	local v56 = v55 and v55:FindFirstChild("FlashGui");
	local v57 = v55 and v55:FindFirstChild("SpotLight");
	local v58 = l__Tool__53 and (l__Tool__53:IsA("Folder") and l__Tool__53:FindFirstChild("ToolJoint"));
	local v59 = v56 and v56:FindFirstChild("OrangeLight");
	local v60 = v56 and v56:FindFirstChild("Light");
	local v61 = v54 and v54:FindFirstChild("SayCheese");
	local v62 = v54 and v54:FindFirstChild("SnapSound");
	if v54 and v55 and v56 and v57 and v61 and v62 and v58 then
		if not p18 then
			v2.MainEvent:FireServer({
				Event = "PeerAction", 
				Action = "cameraFlash", 
				Tool = l__Tool__53
			});
		end;
		if v2.Random:NextInteger(1, 3) == 2 then
			v61:Play();
		end;
		v57.Color = Color3.new(0.6862745098039216, 0.22745098039215686, 0);
		v57.Brightness = 2;
		v57.Range = 14;
		v57.Enabled = true;
		v59.Visible = true;
		task.wait(v2.Random:NextNumber(0.8, 1.1));
		if not v58 or not v58.Parent then
			return;
		else
			v62:Play();
			v60.Visible = false;
			v59.Visible = false;
			v57.Enabled = false;
			v57.Color = Color3.new(1, 1, 1);
			v57.Brightness = 4;
			v57.Range = 16;
			task.wait(0.1);
			v57.Enabled = true;
			v60.Visible = true;
			v59.Visible = false;
			task.wait(0.15);
			v57.Enabled = false;
			v60.Visible = false;
			return;
		end;
	end;
end;
local u16 = require(script.Parent:WaitForChild("Projectiles"));
function u1.projectileShot(p19, p20)
	local l__Tool__63 = p19.Tool;
	local l__Projectiles__64 = p19.Projectiles;
	if not l__Tool__63 or not l__Projectiles__64 then
		return;
	end;
	if l__Tool__63 and not l__Tool__63:IsA("Folder") then
		return;
	end;
	local v65 = l__Tool__63 and l__Tool__63:FindFirstChild("AttachJoint");
	local v66 = v65 and v65:FindFirstChild("BarrelAttachment");
	local v67 = v66 and v66:FindFirstChild("flash");
	local v68 = v66 and v66:FindFirstChild("sparks");
	local v69 = v66 and (v66:FindFirstChild("smoke") and v66:FindFirstChild("smoke"):Clone());
	local v70 = v66 and (v66:FindFirstChild("blast") and v66:FindFirstChild("blast"):Clone());
	if not p20 then
		local v71 = {};
		for v72, v73 in pairs(l__Projectiles__64) do
			local l__crosshairPos__74 = v73.crosshairPos;
			if l__crosshairPos__74 then
				table.insert(v71, {
					crosshairPos = l__crosshairPos__74
				});
			end;
		end;
		v2.MainEvent:FireServer({
			Event = "PeerAction", 
			Action = "projectileShot", 
			Tool = l__Tool__63, 
			Projectiles = v71
		});
	end;
	for v75, v76 in pairs(l__Projectiles__64) do
		local l__startPos__77 = v76.startPos;
		if not p20 or v76.projectileDistance and l__startPos__77 and (v2.Camera.CFrame.p - l__startPos__77).magnitude <= v76.projectileDistance * 1.7 then
			u16.createProjectile({
				projectileType = v76.projectileType, 
				startPos = l__startPos__77, 
				crosshairPos = v76.crosshairPos, 
				projectileSpeed = v76.projectileSpeed
			}, p20);
		end;
	end;
	if p20 and v2.blockedUserIndex[p20.userId] then
		return;
	end;
	if v67 then
		v67:Emit(1);
	end;
	if v68 then
		v68:Emit(v2.Random:NextInteger(8, 12));
	end;
	if v69 and v66 and not v66:FindFirstChild("ActiveSmokeParticle") then
		v69.Name = "ActiveSmokeParticle";
		v69.Parent = v66;
		v69.Enabled = true;
		delay(4, function()
			v69.Rate = 0;
			task.wait(1);
			v69:Destroy();
		end);
	end;
	if v70 and v66 then
		v70.Parent = v66;
		v70:Play();
		delay(2.5, function()
			v70:Destroy();
		end);
	end;
end;
function u1.FOODTOP(p21)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v78 = {};
		local v79 = {};
		v79[1] = "End";
		v79[2] = function()
			u6 = false;
			u7.InitPlrAnimation(p21 and u1.setToolPoses[p21.Name] and "DefaultHold", "ToolAnimation");
		end;
		local v80 = {};
		local u17 = p21:FindFirstChild("AttachJoint") and p21:FindFirstChild("AttachJoint"):FindFirstChild("ToolSound");
		v80[1] = "Chew";
		v80[2] = function()
			u1.replicateToolSound({
				Tool = p21, 
				SoundInstance = u17, 
				ShouldPlay = true
			});
		end;
		v78[1] = v79;
		v78[2] = v80;
		u7.InitPlrAnimation("DefaultEat", "ToolAnimation", { "DefaultHold", "DefaultHoldFar" }, v78);
	end;
end;
function u1.FOODTOP_ActChange(p22, p23, p24, p25)
	if not p22 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultEat", "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p23 and u1.setToolPoses[p23.Name] and "DefaultHold", "ToolAnimation");
end;
function u1.FOODFRONT(p26)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v81 = {};
		local v82 = {};
		v82[1] = "End";
		v82[2] = function()
			u6 = false;
			u7.InitPlrAnimation(p26 and u1.setToolPoses[p26.Name] and "DefaultHold", "ToolAnimation");
		end;
		local v83 = {};
		local u18 = p26:FindFirstChild("AttachJoint") and p26:FindFirstChild("AttachJoint"):FindFirstChild("ToolSound");
		v83[1] = "Chew";
		v83[2] = function()
			u1.replicateToolSound({
				Tool = p26, 
				SoundInstance = u18, 
				ShouldPlay = true
			});
		end;
		v81[1] = v82;
		v81[2] = v83;
		u7.InitPlrAnimation("DefaultEatFront", "ToolAnimation", { "DefaultHold", "DefaultHoldFar" }, v81);
	end;
end;
function u1.FOODFRONT_ActChange(p27, p28, p29, p30)
	if not p27 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultEatFront", "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p28 and u1.setToolPoses[p28.Name] and "DefaultHold", "ToolAnimation");
end;
function u1.TRAYEAT(p31)
	local v84 = p31 and p31:FindFirstChild("AttachJoint");
	if not v84 then
		u6 = false;
		return;
	end;
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v85 = {};
		local v86 = {};
		v86[1] = "Show";
		v86[2] = function()
			v84.Transparency = 0;
		end;
		local v87 = {};
		local u19 = p31:FindFirstChild("AttachJoint") and p31:FindFirstChild("AttachJoint"):FindFirstChild("ToolSound");
		v87[1] = "Eat";
		v87[2] = function()
			v84.Transparency = 1;
			u7.InitPlrAnimation("LeftArmHoldFar", "ToolAnimation");
			u1.replicateToolSound({
				Tool = p31, 
				SoundInstance = u19, 
				ShouldPlay = true
			});
		end;
		v85[1] = v86;
		v85[2] = v87;
		v85[3] = { "End", function()
				u6 = false;
			end };
		u7.InitPlrAnimation("FingerEat", "ToolAnimation", { "LeftArmHoldFar" }, v85);
	end;
end;
function u1.TRAYEAT_ActChange(p32, p33, p34, p35)
	if p32 then
		u7.InitPlrAnimation("LeftArmHoldFar", "ToolAnimation");
		return;
	end;
	u6 = false;
	u7.InitPlrAnimation("", "ToolAnimation", { "FingerEat", "LeftArmHoldFar" });
end;
local u20 = { 1.1, 1.25, 1.4 };
function u1.DRINK(p36)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v88 = {};
		local v89 = {};
		v89[1] = "End";
		v89[2] = function()
			u6 = false;
			u7.InitPlrAnimation(p36 and u1.setToolPoses[p36.Name] and "DefaultHold", "ToolAnimation");
		end;
		local v90 = {};
		local u21 = p36:FindFirstChild("AttachJoint") and p36:FindFirstChild("AttachJoint"):FindFirstChild("ToolSound");
		v90[1] = "Gulp";
		v90[2] = function()
			u1.replicateToolSound({
				Tool = p36, 
				SoundInstance = u21, 
				ShouldPlay = true, 
				ToPitch = u20[v2.Random:NextInteger(1, #u20)]
			});
		end;
		v88[1] = v89;
		v88[2] = v90;
		u7.InitPlrAnimation("DefaultDrink", "ToolAnimation", { "DefaultHold", "DefaultHoldFar" }, v88);
	end;
end;
function u1.DRINK_ActChange(p37, p38, p39, p40)
	if not p37 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultDrink", "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p38 and u1.setToolPoses[p38.Name] and "DefaultHold", "ToolAnimation");
end;
local u22 = { 1.125, 1.17, 1.15 };
function u1.STRAWDRINK(p41)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v91 = {};
		local v92 = {};
		v92[1] = "End";
		v92[2] = function()
			u6 = false;
			u7.InitPlrAnimation(p41 and u1.setToolPoses[p41.Name] and "DefaultHold", "ToolAnimation");
		end;
		local v93 = {};
		local u23 = p41:FindFirstChild("AttachJoint") and p41:FindFirstChild("AttachJoint"):FindFirstChild("ToolSound");
		v93[1] = "Slurp";
		v93[2] = function()
			u1.replicateToolSound({
				Tool = p41, 
				SoundInstance = u23, 
				ShouldPlay = true, 
				ToPitch = u22[v2.Random:NextInteger(1, #u22)]
			});
		end;
		v91[1] = v92;
		v91[2] = v93;
		u7.InitPlrAnimation("DefaultDrink(Straw)", "ToolAnimation", { "DefaultHold" }, v91);
	end;
end;
function u1.STRAWDRINK_ActChange(p42, p43, p44, p45)
	if not p42 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultDrink(Straw)", "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p43 and u1.setToolPoses[p43.Name] and "DefaultHold", "ToolAnimation");
end;
function u1.UTENSIL(p46)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v94 = {};
		local v95 = {};
		v95[1] = "End";
		v95[2] = function()
			u6 = false;
			u7.InitPlrAnimation(p46 and u1.setToolPoses[p46.Name] and "UtensilHold", "ToolAnimation");
		end;
		v94[1] = { "Chew", function()

			end };
		v94[2] = v95;
		u7.InitPlrAnimation("UtensilEat", "ToolAnimation", { "UtensilHold" }, v94);
	end;
end;
function u1.UTENSIL_ActChange(p47, p48, p49, p50)
	if not p47 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "UtensilEat", "UtensilHold" });
		return;
	end;
	u7.InitPlrAnimation(p48 and u1.setToolPoses[p48.Name] and "UtensilHold", "ToolAnimation");
end;
function u1.LICKTOP(p51)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v96 = {};
		local v97 = {};
		v97[1] = "End";
		v97[2] = function()
			u6 = false;
			u7.InitPlrAnimation(p51 and u1.setToolPoses[p51.Name] and "DefaultHold", "ToolAnimation");
		end;
		local v98 = {};
		local u24 = p51:FindFirstChild("AttachJoint") and p51:FindFirstChild("AttachJoint"):FindFirstChild("ToolSound");
		v98[1] = "Lick";
		v98[2] = function()
			u1.replicateToolSound({
				Tool = p51, 
				SoundInstance = u24, 
				ShouldPlay = true
			});
		end;
		v96[1] = v97;
		v96[2] = v98;
		u7.InitPlrAnimation("DefaultLickTop", "ToolAnimation", { "DefaultHold", "DefaultHoldFar" }, v96);
	end;
end;
function u1.LICKTOP_ActChange(p52, p53, p54, p55)
	if not p52 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultLickTop", "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p53 and u1.setToolPoses[p53.Name] and "DefaultHold", "ToolAnimation");
end;
function u1.LICKFRONT(p56)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v99 = {};
		local v100 = {};
		v100[1] = "End";
		v100[2] = function()
			u6 = false;
			u7.InitPlrAnimation(p56 and u1.setToolPoses[p56.Name] and "DefaultHold", "ToolAnimation");
		end;
		local v101 = {};
		local u25 = p56:FindFirstChild("AttachJoint") and p56:FindFirstChild("AttachJoint"):FindFirstChild("ToolSound");
		v101[1] = "Lick";
		v101[2] = function()
			u1.replicateToolSound({
				Tool = p56, 
				SoundInstance = u25, 
				ShouldPlay = true
			});
		end;
		v99[1] = v100;
		v99[2] = v101;
		u7.InitPlrAnimation("DefaultLickFront", "ToolAnimation", { "DefaultHold", "DefaultHoldFar" }, v99);
	end;
end;
function u1.LICKFRONT_ActChange(p57, p58, p59, p60)
	if not p57 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultLickFront", "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p58 and u1.setToolPoses[p58.Name] and "DefaultHold", "ToolAnimation");
end;
function u1.HOLD_ActChange(p61, p62, p63, p64)
	if not p61 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p62 and u1.setToolPoses[p62.Name] and "DefaultHold", "ToolAnimation");
end;
function u1.HOLDFAR_ActChange(p65, p66, p67, p68)
	if not p65 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHoldFar" });
		return;
	end;
	u7.InitPlrAnimation(p66 and u1.setToolPoses[p66.Name] and "DefaultHoldFar", "ToolAnimation");
end;
function u1.CHIPEAT(p69)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v102 = {};
		local v103 = {};
		v103[1] = "End";
		v103[2] = function()
			u7.InitPlrAnimation(p69 and u1.setToolPoses[p69.Name] and "DefaultHold", "ToolAnimation");
			u6 = false;
		end;
		local v104 = {};
		local u26 = p69:FindFirstChild("AttachJoint") and p69:FindFirstChild("AttachJoint"):FindFirstChild("ToolSound");
		v104[1] = "Fall";
		v104[2] = function()
			u1.replicateToolSound({
				Tool = p69, 
				SoundInstance = u26, 
				ShouldPlay = true
			});
			u1.setToolEmitter({
				Tool = p69, 
				ParticleName = "ActivatedEmitter", 
				ToSet = false, 
				EmitAmount = 2
			});
		end;
		v102[1] = v103;
		v102[2] = v104;
		u7.InitPlrAnimation("ChipEat", "ToolAnimation", { "DefaultHold" }, v102);
	end;
end;
function u1.CHIPEAT_ActChange(p70, p71, p72, p73)
	if not p70 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "ChipEat", "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p71 and u1.setToolPoses[p71.Name] and "DefaultHold", "ToolAnimation");
end;
function u1.PIZZABOX(p74, p75)
	local v105 = nil;
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		v105 = p75:FindFirstChild("IsBoxOpened");
		if not v105 or not p75:FindFirstChild("SliceType") or not p75:FindFirstChild("SlicesLeft") then
			return nil;
		end;
		if v105.Value then
			local v106 = {};
			local v107 = {};
			v107[1] = "End";
			v107[2] = function()
				u7.InitPlrAnimation(p74 and u1.setToolPoses[p74.Name] and "PizzaBoxHold", "ToolAnimation");
				v2.MainEvent:FireServer({
					Event = "SetPizzaBoxInteractive", 
					Tool = p74, 
					Create = false
				});
				v105.Value = false;
				u6 = false;
			end;
			v106[1] = v107;
			u7.InitPlrAnimation("PizzaBoxClose", "ToolAnimation", { "PizzaBoxOpenHold", "PizzaBoxHold" }, v106);
			return;
		end;
	else
		return;
	end;
	local v108 = {};
	local v109 = {};
	v109[1] = "End";
	v109[2] = function()
		u7.InitPlrAnimation(p74 and u1.setToolPoses[p74.Name] and "PizzaBoxOpenHold", "ToolAnimation");
		v2.MainEvent:FireServer({
			Event = "SetPizzaBoxInteractive", 
			Tool = p74, 
			Create = true
		});
		v105.Value = true;
		u6 = false;
	end;
	v108[1] = v109;
	u7.InitPlrAnimation("PizzaBoxOpen", "ToolAnimation", { "PizzaBoxHold", "PizzaBoxOpenHold" }, v108);
end;
function u1.PIZZABOX_ActChange(p76, p77, p78, p79)
	local l__IsBoxOpened__110 = p78:FindFirstChild("IsBoxOpened");
	if not p76 then
		u6 = false;
		l__IsBoxOpened__110.Value = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "PizzaBoxOpen", "PizzaBoxClose", "PizzaBoxHold", "PizzaBoxOpenHold" });
		if p79 then
			v2.MainEvent:FireServer({
				Event = "SetPizzaBoxInteractive", 
				Tool = p77, 
				Create = true
			});
			return;
		end;
	else
		u7.InitPlrAnimation(p77 and u1.setToolPoses[p77.Name] and "PizzaBoxHold", "ToolAnimation");
	end;
end;
function u1.PLASTICCUP(p80, p81, p82)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local l__IsFilled__111 = p81:FindFirstChild("IsFilled");
		local l__IsLidOpen__112 = p81:FindFirstChild("IsLidOpen");
		local l__SipsLeft__113 = p81:FindFirstChild("SipsLeft");
		if not l__IsLidOpen__112 or not l__SipsLeft__113 or not p81:FindFirstChild("MaxDrinkAmount") then
			u6 = false;
			return;
		end;
		if not l__IsFilled__111.Value or l__IsFilled__111.Value and l__IsLidOpen__112.Value then
			if not l__IsLidOpen__112.Value then
				local v114 = {};
				local v115 = {};
				v115[1] = "End";
				v115[2] = function()
					u6 = false;
					l__IsLidOpen__112.Value = true;
					u7.InitPlrAnimation("CupLidOpenLoop", "CupLidAnimation", { "CupLidOpen" });
					u7.InitPlrAnimation("DefaultHoldFar", "ToolAnimation");
					if p82 then
						p82();
					end;
				end;
				v114[1] = v115;
				u7.InitPlrAnimation("CupLidOpen", "CupLidAnimation", { "DefaultHold", "DefaultHoldFar", "CupLidOpenLoop" }, v114);
				return;
			else
				local v116 = {};
				local v117 = {};
				v117[1] = "End";
				v117[2] = function()
					u6 = false;
					l__IsLidOpen__112.Value = false;
					u7.InitPlrAnimation(p80 and u1.setToolPoses[p80.Name] and "DefaultHold", "ToolAnimation", { "DefaultHoldFar", "CupLidClose" });
				end;
				v116[1] = v117;
				u7.InitPlrAnimation("CupLidClose", "CupLidAnimation", { "DefaultHold", "DefaultHoldFar", "CupLidOpenLoop" }, v116);
				return;
			end;
		end;
		if l__IsFilled__111.Value and l__SipsLeft__113.Value > 0 then
			local v118 = {};
			local v119 = {};
			v119[1] = "End";
			v119[2] = function()
				u6 = false;
				l__SipsLeft__113.Value = l__SipsLeft__113.Value - 1;
				if l__SipsLeft__113.Value <= 0 then
					l__IsFilled__111.Value = false;
				end;
				u7.InitPlrAnimation(p80 and u1.setToolPoses[p80.Name] and "DefaultHold", "ToolAnimation", { "DefaultHoldFar", "DefaultDrink(Straw)" });
			end;
			local v120 = {};
			local u27 = p80:FindFirstChild("AttachJoint") and p80:FindFirstChild("AttachJoint"):FindFirstChild("ToolSound");
			v120[1] = "Slurp";
			v120[2] = function()
				u1.replicateToolSound({
					Tool = p80, 
					SoundInstance = u27, 
					ShouldPlay = true, 
					ToPitch = u22[v2.Random:NextInteger(1, #u22)]
				});
			end;
			v118[1] = v119;
			v118[2] = v120;
			u7.InitPlrAnimation("DefaultDrink(Straw)", "ToolAnimation", { "DefaultHold", "DefaultHoldFar", "CupLidOpenLoop" }, v118);
		end;
	end;
end;
function u1.PLASTICCUP_ActChange(p83, p84, p85, p86)
	local l__IsLidOpen__121 = p85:FindFirstChild("IsLidOpen");
	if not l__IsLidOpen__121 then
		return;
	end;
	if not p83 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultDrink(Straw)", "DefaultHold", "DefaultHoldFar", "CupLidOpen", "CupLidClose", "CupLidOpenLoop" });
	elseif not l__IsLidOpen__121.Value then
		u7.InitPlrAnimation(p84 and u1.setToolPoses[p84.Name] and "DefaultHold", "ToolAnimation");
	else
		u7.InitPlrAnimation("DefaultHoldFar", "ToolAnimation");
	end;
	if p84.Parent == workspace then
		l__IsLidOpen__121.Value = false;
	end;
end;
function u1.BOOK(p87, p88)
	local v122 = nil;
	v122 = p88:FindFirstChild("IsOpened");
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		if v122.Value then
			local v123 = {};
			local v124 = {};
			v124[1] = "End";
			v124[2] = function()
				u6 = false;
				v122.Value = false;
				u7.InitPlrAnimation(p87 and u1.setToolPoses[p87.Name] and "BookHold", "ToolAnimation");
			end;
			v123[1] = v124;
			u7.InitPlrAnimation("BookClose", "ToolAnimation", { "BookOpenHold", "BookHold" }, v123);
			return;
		end;
	else
		return;
	end;
	local v125 = {};
	local v126 = {};
	v126[1] = "End";
	v126[2] = function()
		u6 = false;
		v122.Value = true;
		u7.InitPlrAnimation("BookOpenHold", "ToolAnimation");
	end;
	v125[1] = v126;
	u7.InitPlrAnimation("BookOpen", "ToolAnimation", { "BookHold" }, v125);
end;
function u1.BOOK_ActChange(p89, p90, p91, p92)
	local l__IsOpened__127 = p91:FindFirstChild("IsOpened");
	if not p89 then
		u7.InitPlrAnimation("", "ToolAnimation", { "BookHold", "BookOpenHold", "BookOpen", "BookClose" });
		u6 = false;
		l__IsOpened__127.Value = false;
		return;
	end;
	u7.InitPlrAnimation(p90 and u1.setToolPoses[p90.Name] and "BookHold", "ToolAnimation");
end;
function u1.Banana(p93, p94)
	local v128 = nil;
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		v128 = p94:FindFirstChild("HasPeeled");
		if not v128 then
			u6 = false;
			return;
		end;
		if v128.Value then
			u6 = false;
			u1.FOODTOP(p93);
			return;
		end;
	else
		return;
	end;
	local v129 = {};
	local v130 = {};
	v130[1] = "End";
	v130[2] = function()
		v128.Value = true;
		u6 = false;
		u7.InitPlrAnimation(p93 and u1.setToolPoses[p93.Name] and "DefaultHold", "ToolAnimation");
	end;
	v129[1] = v130;
	u7.InitPlrAnimation("BananaPeel", "ToolAnimation", { "DefaultHold" }, v129);
end;
function u1.Banana_ActChange(p95, p96, p97, p98)
	u14 = u7.RandomString(6);
	if not p95 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "BananaPeel", "DefaultEat", "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p96 and u1.setToolPoses[p96.Name] and "DefaultHold", "ToolAnimation");
	pcall(function()
		coroutine.wrap(function()
			while task.wait(0.1) and u14 == u14 do
				local v131 = v2.figUpperTorso and v2.figUpperTorso.CFrame + -v2.figUpperTorso.CFrame.UpVector * v2.figUpperTorso.Size.Y / 2 + v2.figUpperTorso.CFrame.LookVector * v2.figUpperTorso.Size.Z / 2;
				local l__rArmOffsetPercent__132 = v2.Figure:FindFirstChild("rArmOffsetPercent");
				if v131 and l__rArmOffsetPercent__132 and l__rArmOffsetPercent__132.Value.X > 0.4 and ((v2.Figure:FindFirstChild("RightHand") and v2.Figure:FindFirstChild("RightHand"):FindFirstChild("RightGripAttachment")).WorldCFrame.p - v131.p).magnitude <= 1 then
					p96.Parent = v2.ToolPack;
				end;			
			end;
		end)();
	end);
end;
function u1.Basketball(p99)
	local l__ToolJoint__133 = p99:FindFirstChild("ToolJoint");
	if not l__ToolJoint__133 then
		return;
	end;
	if not v2.toolTriggerHoldingDown then
		local v134 = {};
		local v135 = {};
		v135[1] = "End";
		v135[2] = function()
			l__ToolJoint__133.Part0 = v2.Figure.LowerTorso;
			l__ToolJoint__133.C0 = v2.Figure.LowerTorso.WaistFrontAttachment.CFrame * v2.CFrameAngles(1.5707963267948966, 0, 0) + Vector3.new(1.8, 0, 0);
			u7.InitPlrAnimation(p99 and u1.setToolPoses[p99.Name] and "BallDribble", "ToolAnimation", nil, { { "BallHit", function()
						print("hit");
					end } });
		end;
		v134[1] = v135;
		u7.InitPlrAnimation("BallShoot1", "ToolAnimation", { "BallHold", "BallDribble" }, v134);
		return;
	end;
	u7.InitPlrAnimation(p99 and u1.setToolPoses[p99.Name] and "BallHold", "ToolAnimation", { "BallShoot1", "BallDribble" });
	l__ToolJoint__133.Part0 = v2.Figure.RightHand;
	l__ToolJoint__133.C0 = v2.Figure.RightHand.RightGripAttachment.CFrame * v2.CFrameAngles(1.5707963267948966, 0, 0);
end;
function u1.Basketball_ActChange(p100, p101, p102, p103)
	if not p100 then
		u7.InitPlrAnimation("", "ToolAnimation", { "BallDribble", "BallHold", "BallShoot1" });
		return;
	end;
	u7.InitPlrAnimation(p101 and u1.setToolPoses[p101.Name] and "BallDribble", "ToolAnimation", nil, { { "BallHit", function()
				print("hit");
			end } });
end;
u1["Banana Shake"] = function(p104)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		u7.InitPlrAnimation("DefaultDrink(Straw)", "ToolAnimation", { "DefaultHold" }, nil, function()
			u6 = false;
		end);
	end;
end;
u1["Banana Shake_ActChange"] = function(p105, p106, p107, p108)
	if not p105 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultDrink(Straw)", "DefaultHold" });
		return;
	end;
	u7.InitPlrAnimation(p106 and u1.setToolPoses[p106.Name] and "DefaultHold", "ToolAnimation");
end;
u1["Battering Ram"] = function(p109)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v136 = {};
		local v137 = {};
		v137[1] = "End";
		v137[2] = function()
			u6 = false;
			u7.InitPlrAnimation(p109 and u1.setToolPoses[p109.Name] and "RamHold", "ToolAnimation");
		end;
		v136[1] = { "Strike", function()
				print("strikes");
			end };
		v136[2] = v137;
		u7.InitPlrAnimation("RamStrike", "ToolAnimation", { "RamHold" }, v136);
	end;
end;
u1["Battering Ram_ActChange"] = function(p110, p111, p112, p113)
	if not p110 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "RamHold", "RamStrike" });
		return;
	end;
	u7.InitPlrAnimation(p111 and u1.setToolPoses[p111.Name] and "RamHold", "ToolAnimation");
end;
function u1.Stethoscope_ActChange(p114, p115, p116, p117)
	local l__RopeConstraint__138 = p115:FindFirstChild("RopeConstraint");
	local l__AttachJoint__139 = p115:FindFirstChild("AttachJoint");
	if not l__AttachJoint__139 then
		return;
	end;
	if l__RopeConstraint__138 then
		l__RopeConstraint__138.Enabled = p114;
		coroutine.wrap(function()
			while l__RopeConstraint__138.Enabled and task.wait(0.1) do
				if l__AttachJoint__139 and p115:FindFirstChild("Bell") then
					l__RopeConstraint__138.Length = (l__AttachJoint__139.Position - p115.Bell.Position).magnitude * 1.4;
				end;			
			end;
		end)();
	end;
	if not p114 then
		u7.InitPlrAnimation("", "ToolAnimation", { "LeftArmHoldFar" });
		return;
	end;
	u7.InitPlrAnimation(p115 and u1.setToolPoses[p115.Name] and "LeftArmHoldFar", "ToolAnimation");
end;
function u1.Axe(p118)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local v140 = {};
		local v141 = {};
		local l__SwingTrail__28 = p118:FindFirstChild("SwingTrail");
		v141[1] = "InitSwing";
		v141[2] = function()
			if l__SwingTrail__28 then
				l__SwingTrail__28.Enabled = true;
			end;
		end;
		local v142 = {};
		v142[1] = "End";
		v142[2] = function()
			task.wait(0.2);
			u6 = false;
			u7.InitPlrAnimation(p118 and u1.setToolPoses[p118.Name] and "DefaultHold", "ToolAnimation");
			if l__SwingTrail__28 then
				l__SwingTrail__28.Enabled = false;
			end;
		end;
		v140[1] = v141;
		v140[2] = { "StopSwing", function()
				if l__SwingTrail__28 then
					l__SwingTrail__28.Enabled = false;
				end;
			end };
		v140[3] = v142;
		u7.InitPlrAnimation("AxeSwing", "ToolAnimation", { "DefaultHold" }, v140);
	end;
end;
function u1.Axe_ActChange(p119, p120, p121, p122)
	if not p119 then
		u6 = false;
		local l__SwingTrail__143 = p120:FindFirstChild("SwingTrail");
		u7.InitPlrAnimation("", "ToolAnimation", { "AxeSwing", "DefaultHold" });
		if l__SwingTrail__143 then
			l__SwingTrail__143.Enabled = false;
			return;
		end;
	else
		u7.InitPlrAnimation(p120 and u1.setToolPoses[p120.Name] and "DefaultHold", "ToolAnimation");
	end;
end;
u1["Fire Extinguisher"] = function(p123)
	local l__toolTriggerHoldingDown__144 = v2.toolTriggerHoldingDown;
	local v145 = p123:FindFirstChild("AttachJoint") and p123:FindFirstChild("AttachJoint"):FindFirstChild("FireLoop");
	local v146 = p123:FindFirstChild("AttachJoint") and p123:FindFirstChild("AttachJoint"):FindFirstChild("OnLoad");
	if v2.toolTriggerHoldingDown and not u6 then
		u6 = true;
		u7.InitPlrAnimation("ExtinguishShoot", "ToolAnimation", { "ExtinguishHold" });
		delay(1, function()
			u6 = false;
		end);
		u1.replicateToolSound({
			Tool = p123, 
			SoundInstance = v146, 
			ShouldPlay = true, 
			ToPitch = nil, 
			DontReplicate = true
		});
		u1.replicateToolSound({
			Tool = p123, 
			SoundInstance = v145, 
			ShouldPlay = true
		});
		u1.setToolEmitter({
			Tool = p123, 
			ParticleName = "ActivatedEmitter", 
			ToSet = true
		});
		return;
	end;
	if not v2.toolTriggerHoldingDown then
		u7.InitPlrAnimation(p123 and u1.setToolPoses[p123.Name] and "ExtinguishHold", "ToolAnimation", { "ExtinguishShoot" });
		u1.replicateToolSound({
			Tool = p123, 
			SoundInstance = v145, 
			ShouldPlay = false
		});
		u1.setToolEmitter({
			Tool = p123, 
			ParticleName = "ActivatedEmitter", 
			ToSet = false
		});
	end;
end;
u1["Fire Extinguisher_ActChange"] = function(p124, p125, p126, p127)
	if p124 then
		u7.InitPlrAnimation(p125 and u1.setToolPoses[p125.Name] and "ExtinguishHold", "ToolAnimation");
		return;
	end;
	u7.InitPlrAnimation("", "ToolAnimation", { "ExtinguishHold", "ExtinguishShoot" });
	u6 = false;
	u1.replicateToolSound({
		Tool = p125, 
		SoundInstance = p125:FindFirstChild("AttachJoint") and p125:FindFirstChild("AttachJoint"):FindFirstChild("FireLoop"), 
		ShouldPlay = false
	});
	u1.setToolEmitter({
		Tool = p125, 
		ParticleName = "ActivatedEmitter", 
		ToSet = false
	});
end;
u1["Wind-x"] = function(p128)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		u1.replicateToolSound({
			Tool = p128, 
			SoundInstance = p128:FindFirstChild("AttachJoint") and p128:FindFirstChild("AttachJoint"):FindFirstChild("SpraySound"), 
			ShouldPlay = true
		});
		u1.setToolEmitter({
			Tool = p128, 
			ParticleName = "ActivatedEmitter", 
			ToSet = false, 
			EmitAmount = 3
		});
		task.wait(0.2);
		u6 = false;
	end;
end;
u1["Wind-x_ActChange"] = function(p129, p130, p131, p132)
	if not p129 then
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHoldFar" });
		u6 = false;
		return;
	end;
	u7.InitPlrAnimation(p130 and u1.setToolPoses[p130.Name] and "DefaultHoldFar", "ToolAnimation");
end;
u1["Ice Cream Cone"] = function(p133, p134)
	local v147 = p134 and p134:FindFirstChild("HasScooped");
	if not u6 and v147 and v147.Value and not v2.toolTriggerHoldingDown then
		u1.LICKFRONT(p133);
	end;
end;
u1["Ice Cream Cone_ActChange"] = function(p135, p136, p137, p138)
	if not p135 then
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHold", "DefaultHoldFar", "DefaultLickFront" });
		u6 = false;
		return;
	end;
	u7.InitPlrAnimation(p136 and u1.setToolPoses[p136.Name] and "DefaultHoldFar", "ToolAnimation");
end;
local u29 = "";
u1["Fishing Rod"] = function(p139, p140)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		if u29 == "" then
			u29 = "Casting";
			u7.InitPlrAnimation("RodCast", "ToolAnimation", { "RodSwayIdle", "RodSwayRun", "RodHandHold" }, { { "Cast", function()

					end }, { "End", function()
						u6 = false;
						u29 = "Casted";
						u7.InitPlrAnimation("RodCastHold", "ToolAnimation");
					end } });
			return;
		end;
		if u29 == "Casted" then
			local v148 = {};
			local v149 = {};
			v149[1] = "End";
			v149[2] = function()
				u6 = false;
				u29 = "";
				u7.InitPlrAnimation(p139 and u1.setToolPoses[p139.Name] and "RodHandHold", "ToolAnimation");
			end;
			v148[1] = { "Reel", function()

				end };
			v148[2] = v149;
			u7.InitPlrAnimation("RodReelMiss", "ToolAnimation", { "RodCastHold" }, v148);
		end;
	end;
end;
u1["Fishing Rod_ActChange"] = function(p141, p142, p143, p144)
	u14 = u7.RandomString(6);
	if not p141 then
		u7.InitPlrAnimation("", "ToolAnimation", { "RodHandHold", "RodSwayIdle", "RodSwayRun", "RodCast", "RodCastHold", "RodReelMiss", "RodReelCaught" });
		u29 = "";
		u6 = false;
	else
		u7.InitPlrAnimation(p142 and u1.setToolPoses[p142.Name] and "RodHandHold", "ToolAnimation");
		local u30 = false;
		local u31 = "";
		coroutine.wrap(function()
			while task.wait(0.05) and u14 == u14 do
				local v150 = true;
				if u29 ~= "Casting" then
					v150 = u29 == "Casted";
				end;
				if v2.humanoidCurrentSpeed > 0.05 and not v150 then
					if not u30 and u31 ~= "RodSwayRun" then
						u30 = true;
						u31 = "RodSwayRun";
						u7.InitPlrAnimation("RodSwayRun", "RodAnimation", { "RodSwayIdle" });
					else
						local v151 = v2.humanoidCurrentSpeed / (24 / v2.Animations.RodSwayRun.Weight);
						u7.AdjustPlrAnimation("RodSwayRun", v2.humanoidCurrentSpeed / (24 / v2.Animations.RodSwayRun.Tempo), v151 <= 1 and v151 or 1);
					end;
				elseif v2.humanoidCurrentSpeed <= 0.05 and not v150 and u31 ~= "RodSwayIdle" then
					u30 = false;
					u31 = "RodSwayIdle";
					u7.InitPlrAnimation("RodSwayIdle", "RodAnimation", { "RodSwayRun" });
				end;
				if not u14 == u14 then
					break;
				end;			
			end;
		end)();
	end;
end;
u1["Egg Carton"] = function(p145, p146)
	local v152 = p146 and p146:FindFirstChild("IsOpened");
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		if v152.Value then
			local v153 = {};
			local v154 = {};
			v154[1] = "End";
			v154[2] = function()
				u6 = false;
				v152.Value = false;
				u7.InitPlrAnimation(p145 and u1.setToolPoses[p145.Name] and "DefaultHoldFar", "ToolAnimation");
			end;
			v153[1] = v154;
			u7.InitPlrAnimation("EggCartonClose", "ToolAnimation", { "DefaultHoldFar", "EggCartonOpenHold", "EggCartonOpen" }, v153);
			return;
		end;
	else
		return;
	end;
	local v155 = {};
	local v156 = {};
	v156[1] = "End";
	v156[2] = function()
		u6 = false;
		v152.Value = true;
		u7.InitPlrAnimation("DefaultHoldFar", "ToolAnimation");
		u7.InitPlrAnimation("EggCartonOpenHold", "ToolAnimation");
	end;
	v155[1] = v156;
	u7.InitPlrAnimation("EggCartonOpen", "ToolAnimation", { "DefaultHoldFar", "EggCartonOpenHold", "EggCartonClose" }, v155);
end;
u1["Egg Carton_ActChange"] = function(p147, p148, p149, p150)
	local v157 = p149 and p149:FindFirstChild("IsOpened");
	if not p147 then
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHoldFar", "EggCartonOpen", "EggCartonOpenHold", "EggCartonClose" });
		u6 = false;
		v157.Value = false;
		return;
	end;
	u7.InitPlrAnimation(p148 and u1.setToolPoses[p148.Name] and "DefaultHoldFar", "ToolAnimation");
end;
u1["Digital Camera_ActChange"] = function(p151, p152, p153, p154)
	if not p151 then
		u7.InitPlrAnimation("", "ToolAnimation", { "DigCamHold" });
		u6 = false;
		return;
	end;
	u7.InitPlrAnimation(p152 and u1.setToolPoses[p152.Name] and "DigCamHold", "ToolAnimation");
end;
u1["Digital Camera"] = function(p155, p156)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		u1.cameraFlash({
			Tool = p155
		});
		task.wait(0.5);
		u6 = false;
	end;
end;
u1["Lunch Tray_ActChange"] = function(p157, p158, p159, p160)
	if not p157 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "LunchTrayHold" });
		return;
	end;
	u7.InitPlrAnimation(p158 and u1.setToolPoses[p158.Name] and "LunchTrayHold", "ToolAnimation");
end;
local function u32(p161, p162, p163)
	local v158 = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false);
	local l__ScreenPart__159 = p161:FindFirstChild("ScreenPart");
	local v160 = l__ScreenPart__159 and l__ScreenPart__159:FindFirstChild("Screen");
	local v161 = v160 and v160:FindFirstChild("DesktopFrame");
	local v162 = p162 and p162:FindFirstChild("IsOpened");
	local v163 = p162 and p162:FindFirstChild("WallpaperCycleTime");
	if l__ScreenPart__159 and v160 and v161 and v162 and v163 then
		if p163 then
			v161.LoginFrame.BackgroundTransparency = 0;
			v2.TweenService:Create(v161.LoginFrame, v158, {
				BackgroundTransparency = 1
			}):Play();
			u4 = true;
			while u4 and task.wait() do
				for v164 = u5, 4 do
					if v164 < 4 then
						local v165 = v164 + 1;
						if not v165 then
							v165 = false;
							if v164 == 4 then
								v165 = 1;
							end;
						end;
					else
						v165 = false;
						if v164 == 4 then
							v165 = 1;
						end;
					end;
					u5 = v165;
					local v166 = v2.TweenService:Create(v161["WallpaperLabel" .. v165], v158, {
						ImageTransparency = 0
					});
					v2.TweenService:Create(v161["WallpaperLabel" .. v164], v158, {
						ImageTransparency = 1
					}):Play();
					v166:Play();
					for v167 = 1, v163.Value * 10 do
						task.wait(0.1);
						if not u4 then
							return;
						end;
					end;
				end;			
			end;
			return;
		else
			u4 = false;
			v2.TweenService:Create(v161.LoginFrame, v158, {
				BackgroundTransparency = 0
			}):Play();
			return;
		end;
	end;
end;
function u1.Litebook_ActChange(p164, p165, p166, p167)
	local v168 = p166 and p166:FindFirstChild("IsOpened");
	u32(p165, p166, false);
	if not p164 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "LaptopHold", "LaptopOpen", "LaptopClose", "LaptopOpenHold" });
		v168.Value = false;
		return;
	end;
	u7.InitPlrAnimation(p165 and u1.setToolPoses[p165.Name] and "LaptopHold", "ToolAnimation");
end;
function u1.Litebook(p168, p169)
	local v169 = p169 and p169:FindFirstChild("IsOpened");
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		if v169.Value then
			local v170 = {};
			local v171 = {};
			v171[1] = "End";
			v171[2] = function()
				u6 = false;
				v169.Value = false;
				u32(p168, p169, false);
				u7.InitPlrAnimation(p168 and u1.setToolPoses[p168.Name] and "LaptopHold", "ToolAnimation");
			end;
			v170[1] = v171;
			u7.InitPlrAnimation("LaptopClose", "ToolAnimation", { "LaptopOpenHold" }, v170);
			return;
		end;
	else
		return;
	end;
	local v172 = {};
	local v173 = {};
	v173[1] = "Login";
	v173[2] = function()
		u32(p168, p169, true);
	end;
	local v174 = {};
	v174[1] = "End";
	v174[2] = function()
		u6 = false;
		v169.Value = true;
		u7.InitPlrAnimation("LaptopOpenHold", "ToolAnimation");
	end;
	v172[1] = v173;
	v172[2] = v174;
	u7.InitPlrAnimation("LaptopOpen", "ToolAnimation", { "LaptopHold" }, v172);
end;
function u1.Clipboard_ActChange(p170, p171, p172, p173)
	if not p170 then
		u7.InitPlrAnimation("", "ToolAnimation", { "ClipboardHold", "ClipboardWrite" });
		u6 = false;
		return;
	end;
	u7.InitPlrAnimation(p171 and u1.setToolPoses[p171.Name] and "ClipboardHold", "ToolAnimation");
end;
function u1.Clipboard(p174, p175)
	local l__toolTriggerHoldingDown__175 = v2.toolTriggerHoldingDown;
	if v2.toolTriggerHoldingDown and not u6 then
		u6 = true;
		u7.InitPlrAnimation("ClipboardWrite", "ToolAnimation", { "ClipboardHold" });
		delay(1, function()
			u6 = false;
		end);
		return;
	end;
	if not v2.toolTriggerHoldingDown then
		u7.InitPlrAnimation(p174 and u1.setToolPoses[p174.Name] and "ClipboardHold", "ToolAnimation", { "ClipboardWrite" });
	end;
end;
local u33 = require(l__Parent__1:WaitForChild("PromptFunctions"));
function u1.Plate_ActChange(p176, p177, p178, p179)
	if not p176 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "UtensilEat", "UtensilHold" });
		v2.PlateFrame:TweenPosition(UDim2.new(v2.PlateFrame.Position.X.Scale, v2.PlateFrame.Position.X.Offset, 1.1, 0), "In", "Back", 0.9 * v2.UIAnimationSpeed, true, function()
			v2.PlateFrame.Visible = false;
		end);
		if p177:FindFirstChild("PlateProp") then
			v2.MainEvent:FireServer({
				Event = "RemovePlateProp", 
				ForProp = p177:FindFirstChild("PlateProp")
			});
			return;
		end;
	else
		u7.InitPlrAnimation(p177 and u1.setToolPoses[p177.Name] and "UtensilHold", "ToolAnimation");
		u33.ShowPlateGui();
	end;
end;
function u1.Plate(p180, p181)
	if p180 and p180:FindFirstChild("PlateProp") then
		u1.UTENSIL(p180);
	end;
end;
function u1.Umbrella_ActChange(p182, p183, p184, p185)
	local v176 = p184 and p184:FindFirstChild("IsOpened");
	if not p182 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHold", "CanopyOpen", "CanopyClose", "UmbrellaHold" });
		v176.Value = false;
		u1.setUmbrellaCanopy({
			tool = p183, 
			step = "CanopyPos1"
		});
		return;
	end;
	u7.InitPlrAnimation(p183 and u1.setToolPoses[p183.Name] and "DefaultHold", "ToolAnimation");
end;
local function u34(p186, p187, p188)
	local v177 = p187 and p187:FindFirstChild("IsOpened");
	if not u6 and not v2.toolTriggerHoldingDown and v177 then
		u6 = true;
		if not v177.Value then
			local v178 = {};
			local v179 = {};
			v179[1] = "End";
			v179[2] = function()
				u7.InitPlrAnimation(p186 and u1.setToolPoses[p186.Name] and "UmbrellaHold", "ToolAnimation");
				v177.Value = true;
				u6 = false;
				if p188 then
					p188();
				end;
			end;
			v178[1] = v179;
			v178[2] = { "CanopyPos1", function()
					u1.setUmbrellaCanopy({
						tool = p186, 
						step = "CanopyPos1"
					});
				end };
			v178[3] = { "CanopyPos2", function()
					u1.setUmbrellaCanopy({
						tool = p186, 
						step = "CanopyPos2"
					});
				end };
			v178[4] = { "CanopyPos3", function()
					u1.setUmbrellaCanopy({
						tool = p186, 
						step = "CanopyPos3"
					});
				end };
			v178[5] = { "CanopyPos4", function()
					u1.setUmbrellaCanopy({
						tool = p186, 
						step = "CanopyPos4"
					});
				end };
			u7.InitPlrAnimation("CanopyOpen", "ToolAnimation", { "DefaultHold" }, v178);
			return;
		end;
		local v180 = {};
		local v181 = {};
		v181[1] = "End";
		v181[2] = function()
			u7.InitPlrAnimation(p186 and u1.setToolPoses[p186.Name] and "DefaultHold", "ToolAnimation");
			v177.Value = false;
			u6 = false;
			if p188 then
				p188();
			end;
		end;
		v180[1] = v181;
		v180[2] = { "CanopyPos1", function()
				u1.setUmbrellaCanopy({
					tool = p186, 
					step = "CanopyPos1"
				});
			end };
		v180[3] = { "CanopyPos2", function()
				u1.setUmbrellaCanopy({
					tool = p186, 
					step = "CanopyPos2"
				});
			end };
		v180[4] = { "CanopyPos3", function()
				u1.setUmbrellaCanopy({
					tool = p186, 
					step = "CanopyPos3"
				});
			end };
		v180[5] = { "CanopyPos4", function()
				u1.setUmbrellaCanopy({
					tool = p186, 
					step = "CanopyPos4"
				});
			end };
		u7.InitPlrAnimation("CanopyClose", "ToolAnimation", { "UmbrellaHold" }, v180);
	end;
end;
function u1.Umbrella(p189, p190)
	u34(p189, p190);
end;
u1["Master Umbrella_ActChange"] = function(p191, p192, p193, p194)
	local v182 = p193 and p193:FindFirstChild("IsOpened");
	local l__AttachJoint__183 = p192:FindFirstChild("AttachJoint");
	if not l__AttachJoint__183 then
		return;
	end;
	if p191 then
		u7.InitPlrAnimation(p192 and u1.setToolPoses[p192.Name] and "DefaultHold", "ToolAnimation");
		return;
	end;
	u6 = false;
	u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHold", "CanopyOpen", "CanopyClose", "UmbrellaHold" });
	v182.Value = false;
	u1.setUmbrellaCanopy({
		tool = p192, 
		step = "CanopyPos1"
	});
	workspace.Gravity = 196.2;
	u1.replicateToolSound({
		Tool = p192, 
		SoundInstance = l__AttachJoint__183.MasterTheme, 
		ShouldPlay = false, 
		ToPitch = 1
	});
end;
u1["Master Umbrella"] = function(p195, p196)
	local l__AttachJoint__184 = p195:FindFirstChild("AttachJoint");
	if not l__AttachJoint__184 then
		return;
	end;
	local u35 = p196 and p196:FindFirstChild("IsOpened");
	local l__MasterTheme__36 = l__AttachJoint__184.MasterTheme;
	u34(p195, p196, function()
		if u35.Value then
			workspace.Gravity = 45;
			u1.replicateToolSound({
				Tool = p195, 
				SoundInstance = l__MasterTheme__36, 
				ShouldPlay = true, 
				ToPitch = 1
			});
			return;
		end;
		workspace.Gravity = 196.2;
		u1.replicateToolSound({
			Tool = p195, 
			SoundInstance = l__MasterTheme__36, 
			ShouldPlay = false, 
			ToPitch = 1
		});
	end);
end;
local function u37(p197)
	local v185 = nil;
	local v186 = nil;
	local v187 = nil;
	local v188 = nil;
	local v189 = nil;
	local v190 = nil;
	local v191 = v2.projectileStats[p197.Name];
	if v191 then
		local v192, v193, v194 = pairs(u2);
		while true do
			local v195 = nil;
			v195, v185 = v192(v193, v194);
			if not v195 then
				break;
			end;
			v194 = v195;
			if v185.gunModel == p197 then
				v186 = u1;
				v187 = "gunIndex";
				v188 = v186;
				v189 = v187;
				v190 = v185;
				v188[v189] = v190;
				return;
			end;		
		end;
		table.insert(u2, {
			projectileType = v191.projectileType, 
			spreadAngle = v191.spreadAngle, 
			projectileCount = v191.projectileCount, 
			gunModel = p197, 
			maxAmmo = v191.maxAmmo, 
			currentAmmo = v191.maxAmmo, 
			projectileSpeed = v191.projectileSpeed, 
			isReloading = false, 
			session = u3, 
			projectileDistance = v191.projectileDistance, 
			coolDown = v191.coolDown, 
			damageFactor = v191.damageFactor
		});
		u1.gunIndex = u2[#u2];
		return;
	else
		return;
	end;
	v186 = u1;
	v187 = "gunIndex";
	v188 = v186;
	v189 = v187;
	v190 = v185;
	v188[v189] = v190;
end;
function u1.Pistol_ActChange(p198, p199, p200, p201)
	if not p198 then
		v2.isHoldingGun = false;
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "PistolShoot", "PistolReload", "PistolHold" });
		return;
	end;
	v2.isHoldingGun = true;
	u37(p199);
	u7.InitPlrAnimation(p199 and u1.setToolPoses[p199.Name] and "PistolHold", "ToolAnimation");
end;
function u1.Pistol(p202, p203)
	local l__AttachJoint__196 = p202:FindFirstChild("AttachJoint");
	if not l__AttachJoint__196 or not u1.gunIndex then
		u6 = false;
		return;
	end;
	if v2.figHumanoid and (v2.figHumanoid.Health <= 0 or v2.figHumanoid.PlatformStand) then
		u6 = false;
		return;
	end;
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		if not u1.gunIndex.isReloading and not (u1.gunIndex.currentAmmo <= 0) then
			local l__WorldPosition__197 = l__AttachJoint__196.BarrelAttachment.WorldPosition;
			u1.projectileShot({
				Tool = p202, 
				Projectiles = { {
						projectileType = u1.gunIndex.projectileType, 
						startPos = l__WorldPosition__197, 
						crosshairPos = u8(l__WorldPosition__197, u1.gunIndex.projectileDistance), 
						projectileSpeed = u1.gunIndex.projectileSpeed, 
						projectileDistance = u1.gunIndex.projectileDistance
					} }
			});
			u1.gunIndex.currentAmmo = u1.gunIndex.currentAmmo - 1;
			local v198 = {};
			local v199 = {};
			v199[1] = "End";
			v199[2] = function()
				if not u1.gunIndex.isReloading then
					u7.InitPlrAnimation(p202 and u1.setToolPoses[p202.Name] and "PistolHold", "ToolAnimation");
					u9(p202, "PistolReload", "PistolHold", function()
						u7.InitPlrAnimation(p202 and u1.setToolPoses[p202.Name] and "PistolHold", "ToolAnimation");
					end);
				end;
			end;
			v198[1] = v199;
			u7.InitPlrAnimation("PistolShoot", "ToolAnimation", nil, v198);
			return;
		end;
	else
		return;
	end;
	u9(p202, "PistolReload", "PistolHold", function()
		u7.InitPlrAnimation(p202 and u1.setToolPoses[p202.Name] and "PistolHold", "ToolAnimation");
	end);
end;
function u1.Stungun_ActChange(p204, p205, p206, p207)
	if not p204 then
		v2.isHoldingGun = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "StungunShoot", "StungunHold" });
		return;
	end;
	v2.isHoldingGun = true;
	u37(p205);
	u7.InitPlrAnimation(p205 and u1.setToolPoses[p205.Name] and "StungunHold", "ToolAnimation");
end;
function u1.Stungun(p208, p209)
	if not v2.toolTriggerHoldingDown then
		local l__AttachJoint__200 = p208:FindFirstChild("AttachJoint");
		if not l__AttachJoint__200 then
			return;
		end;
		if v2.figHumanoid and (v2.figHumanoid.Health <= 0 or v2.figHumanoid.PlatformStand) then
			return;
		end;
		local l__Door__201 = p208.Door;
		local l__WorldPosition__202 = l__AttachJoint__200.BarrelAttachment.WorldPosition;
		local v203 = u8(l__WorldPosition__202, u1.gunIndex.projectileDistance);
		if not u1.gunIndex.isReloading then
			local l__gunIndex__204 = u1.gunIndex;
			u1.projectileShot({
				Tool = p208, 
				Projectiles = { {
						projectileType = l__gunIndex__204.projectileType, 
						startPos = l__WorldPosition__202, 
						crosshairPos = v203, 
						projectileSpeed = l__gunIndex__204.projectileSpeed, 
						projectileDistance = l__gunIndex__204.projectileDistance
					} }
			});
			if l__gunIndex__204.currentAmmo > 0 then
				l__gunIndex__204.currentAmmo = l__gunIndex__204.currentAmmo - 1;
			end;
			if l__gunIndex__204.currentAmmo <= 0 and not l__gunIndex__204.isReloading then
				l__Door__201.Transparency = 1;
				l__gunIndex__204.isReloading = true;
				delay(l__gunIndex__204.coolDown, function()
					l__gunIndex__204.currentAmmo = l__gunIndex__204.maxAmmo;
					l__Door__201.Transparency = 0;
					l__gunIndex__204.isReloading = false;
				end);
			end;
			local v205 = {};
			local v206 = {};
			v206[1] = "End";
			v206[2] = function()
				u7.InitPlrAnimation(p208 and u1.setToolPoses[p208.Name] and "StungunHold", "ToolAnimation");
			end;
			v205[1] = v206;
			u7.InitPlrAnimation("StungunShoot", "ToolAnimation", nil, v205);
		end;
	end;
end;
function u1.Shotgun_ActChange(p210, p211, p212, p213)
	if not p210 then
		v2.isHoldingGun = false;
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "ShotgunShoot", "ShotgunReload", "ShotgunHold" });
		return;
	end;
	v2.isHoldingGun = true;
	u37(p211);
	u7.InitPlrAnimation(p211 and u1.setToolPoses[p211.Name] and "ShotgunHold", "ToolAnimation");
end;
function u1.Shotgun(p214, p215)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local l__AttachJoint__207 = p214:FindFirstChild("AttachJoint");
		if not l__AttachJoint__207 or not u1.gunIndex then
			u6 = false;
			return;
		end;
		if v2.figHumanoid and (v2.figHumanoid.Health <= 0 or v2.figHumanoid.PlatformStand) then
			u6 = false;
			return;
		end;
		if u1.gunIndex.isReloading or u1.gunIndex.currentAmmo <= 0 then
			u9(p214, "ShotgunReload", "ShotgunHold", function()
				u7.InitPlrAnimation(p214 and u1.setToolPoses[p214.Name] and "ShotgunHold", "ToolAnimation");
			end);
			return;
		end;
		if not u1.gunIndex.hasShot then
			local l__WorldPosition__208 = l__AttachJoint__207.BarrelAttachment.WorldPosition;
			local v209 = {};
			for v210 = 1, u1.gunIndex.projectileCount do
				table.insert(v209, {
					projectileType = u1.gunIndex.projectileType, 
					startPos = l__WorldPosition__208, 
					crosshairPos = u8(l__WorldPosition__208, u1.gunIndex.projectileDistance), 
					projectileSpeed = u1.gunIndex.projectileSpeed, 
					projectileDistance = u1.gunIndex.projectileDistance
				});
			end;
			u1.projectileShot({
				Tool = p214, 
				Projectiles = v209
			});
			u1.gunIndex.currentAmmo = u1.gunIndex.currentAmmo - 1;
			u1.gunIndex.hasShot = true;
		end;
		local v211 = {};
		local v212 = {};
		v212[1] = "End";
		v212[2] = function()
			if not u1.gunIndex.isReloading then
				u7.InitPlrAnimation(p214 and u1.setToolPoses[p214.Name] and "ShotgunHold", "ToolAnimation");
				u9(p214, "ShotgunReload", "ShotgunHold", function()
					u7.InitPlrAnimation(p214 and u1.setToolPoses[p214.Name] and "ShotgunHold", "ToolAnimation");
				end);
			end;
			u1.gunIndex.hasShot = false;
		end;
		local v213 = {};
		v213[1] = "PumpStart";
		v213[2] = function()
			l__AttachJoint__207.BarrelAttachment.clip:Play();
		end;
		v211[1] = v212;
		v211[2] = v213;
		u7.InitPlrAnimation("ShotgunShoot", "ToolAnimation", { "ShotgunHold" }, v211);
	end;
end;
u1["Assault Rifle_ActChange"] = function(p216, p217, p218, p219)
	if not p216 then
		v2.isHoldingGun = false;
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "AssaultShoot", "AssaultReload", "AssaultHold" });
		return;
	end;
	v2.isHoldingGun = true;
	u37(p217);
	u7.InitPlrAnimation(p217 and u1.setToolPoses[p217.Name] and "AssaultHold", "ToolAnimation");
	if u1.gunIndex and not u1.gunIndex.isReloading then
		u1.gunIndex.session = u3;
	end;
end;
u1["Assault Rifle"] = function(p220, p221)
	if v2.toolTriggerHoldingDown and not u6 and u1.gunIndex then
		u6 = true;
		if u1.gunIndex.isReloading and u1.gunIndex.session ~= u3 then
			u1.gunIndex.session = u3;
			u7.InitPlrAnimation("", "ToolAnimation", { "AssaultShoot" });
			u9(p220, "AssaultReload", "AssaultHold", function()
				u7.InitPlrAnimation(p220 and u1.setToolPoses[p220.Name] and "AssaultHold", "ToolAnimation");
				u13(p220);
			end);
		end;
		u13(p220);
		delay(0.4, function()
			u6 = false;
		end);
		return;
	end;
	if not v2.toolTriggerHoldingDown and u1.gunIndex and not u1.gunIndex.isReloading then
		u7.InitPlrAnimation(p220 and u1.setToolPoses[p220.Name] and "AssaultHold", "ToolAnimation", { "AssaultShoot", "AssaultReload" });
	end;
end;
u1["Assault Waffle_ActChange"] = function(p222, p223, p224, p225)
	if not p222 then
		v2.isHoldingGun = false;
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "AssaultShoot", "AssaultReload", "AssaultHold" });
		return;
	end;
	v2.isHoldingGun = true;
	u37(p223);
	u7.InitPlrAnimation(p223 and u1.setToolPoses[p223.Name] and "AssaultHold", "ToolAnimation");
	if u1.gunIndex and not u1.gunIndex.isReloading then
		u1.gunIndex.session = u3;
	end;
end;
u1["Assault Waffle"] = function(p226, p227)
	if v2.toolTriggerHoldingDown and not u6 and u1.gunIndex then
		u6 = true;
		if u1.gunIndex.isReloading and u1.gunIndex.session ~= u3 then
			u1.gunIndex.session = u3;
			u7.InitPlrAnimation("", "ToolAnimation", { "AssaultShoot" });
			u9(p226, "AssaultReload", "AssaultHold", function()
				u7.InitPlrAnimation(p226 and u1.setToolPoses[p226.Name] and "AssaultHold", "ToolAnimation");
				u13(p226);
			end);
		end;
		u13(p226);
		delay(0.4, function()
			u6 = false;
		end);
		return;
	end;
	if not v2.toolTriggerHoldingDown and not u1.gunIndex.isReloading then
		u7.InitPlrAnimation(p226 and u1.setToolPoses[p226.Name] and "AssaultHold", "ToolAnimation", { "AssaultShoot", "AssaultReload" });
	end;
end;
function u1.LAUNCHER_ActChange(p228, p229, p230, p231)
	if not p228 then
		v2.isHoldingGun = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "LauncherShoot", "LauncherHold" });
		return;
	end;
	v2.isHoldingGun = true;
	u37(p229);
	u7.InitPlrAnimation(p229 and u1.setToolPoses[p229.Name] and "LauncherHold", "ToolAnimation");
end;
function u1.LAUNCHER(p232, p233)
	if not u6 and not v2.toolTriggerHoldingDown then
		u6 = true;
		local l__AttachJoint__214 = p232:FindFirstChild("AttachJoint");
		if not l__AttachJoint__214 then
			u6 = false;
			return;
		end;
		local l__PropJoint__215 = l__AttachJoint__214.PropJoint;
		local l__Prop__216 = p232.Prop;
		local v217 = TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local v218 = TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out);
		local v219 = v2.CFrameNew(0, -0.05, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		local v220 = v2.CFrameNew(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		local v221 = tick();
		if not u1.gunIndex.isReloading then
			local l__gunIndex__222 = u1.gunIndex;
			v2.TweenService:Create(l__PropJoint__215, v217, {
				C0 = v219
			}):Play();
			local v223 = u7.InitiateInvoke({
				Event = "SpawnLauncherEgg"
			});
			if v223 then
				if l__gunIndex__222.currentAmmo > 0 then
					l__gunIndex__222.currentAmmo = l__gunIndex__222.currentAmmo - 1;
				end;
				if l__gunIndex__222.currentAmmo <= 0 and not l__gunIndex__222.isReloading then
					l__gunIndex__222.isReloading = true;
					delay(l__gunIndex__222.coolDown, function()
						l__gunIndex__222.currentAmmo = l__gunIndex__222.maxAmmo;
						v2.TweenService:Create(l__PropJoint__215, v218, {
							C0 = v220
						}):Play();
						l__Prop__216.Transparency = 0;
						l__gunIndex__222.isReloading = false;
					end);
				end;
				if tick() - v221 < l__gunIndex__222.coolDown then
					l__Prop__216.Transparency = 1;
				end;
				local v224 = {};
				local v225 = {};
				v225[1] = "End";
				v225[2] = function()
					u7.InitPlrAnimation(p232 and u1.setToolPoses[p232.Name] and "LauncherHold", "ToolAnimation");
				end;
				v224[1] = v225;
				u7.InitPlrAnimation("LauncherShoot", "ToolAnimation", nil, v224);
				local l__WorldPosition__226 = l__AttachJoint__214.BarrelAttachment.WorldPosition;
				local v227, v228 = u8(l__WorldPosition__226, u1.gunIndex.projectileDistance);
				v223.CFrame = v2.CFrameNew(l__WorldPosition__226, v228) * v2.CFrameAngles(-v2.MathRad(90), 0, 0);
				v223.Anchored = false;
				v223.BodyForce.Force = v2.Vector3New(0, v223:GetMass() * workspace.Gravity * 0.85, 0);
				v223.Velocity = -(l__WorldPosition__226 - v228).unit * (v228 - l__WorldPosition__226).magnitude + v2.Vector3New(0, 6, 0);
				v223.RotVelocity = v223.CFrame.UpVector * 15;
				if l__gunIndex__222.currentAmmo > 0 and not l__gunIndex__222.isReloading then
					v2.TweenService:Create(l__PropJoint__215, v218, {
						C0 = v220
					}):Play();
					l__Prop__216.Transparency = 0;
				end;
			end;
		end;
		task.wait(0.05);
		u6 = false;
	end;
end;
u1["Admin Block_ActChange"] = function(p234, p235, p236, p237)
	if not p234 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "BlockHold" });
		return;
	end;
	u7.InitPlrAnimation(p235 and u1.setToolPoses[p235.Name] and "BlockHold", "ToolAnimation");
end;
u1["Admin Block"] = function(p238, p239)
	if not u6 then
		u6 = true;
		local l__AttachJoint__229 = p238:FindFirstChild("AttachJoint");
		if not l__AttachJoint__229 then
			u6 = false;
			return;
		end;
		if not v2.toolTriggerHoldingDown and v2.figRootPart and v2.Figure then
			local v230, v231 = u8(v2.figRootPart.Position, 1000);
			v2.Figure:SetPrimaryPartCFrame(CFrame.new(v231.X, v231.Y + v2.Figure:GetExtentsSize().Y / 2, v231.Z));
			task.wait(0.05);
			u1.replicateToolSound({
				Tool = p238, 
				SoundInstance = l__AttachJoint__229.PortalEnd, 
				ShouldPlay = true
			});
		else
			u1.replicateToolSound({
				Tool = p238, 
				SoundInstance = l__AttachJoint__229.PortalBegin, 
				ShouldPlay = true
			});
		end;
		u6 = false;
	end;
end;
local u38 = require(l__Parent__1:WaitForChild("InteractionModule"));
u1["Super Handcuffs_ActChange"] = function(p240, p241, p242, p243)
	if not p240 then
		u6 = false;
		u1.holdingCuffs = false;
		u38.hideActivePart();
		u38.clearCloserParts();
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHoldFar" });
		return;
	end;
	u1.holdingCuffs = true;
	u38.updateCloserParts(true);
	u7.InitPlrAnimation(p241 and u1.setToolPoses[p241.Name] and "DefaultHoldFar", "ToolAnimation");
end;
function u1.Handcuffs_ActChange(p244, p245, p246, p247)
	if not p244 then
		u6 = false;
		u1.holdingCuffs = false;
		u38.hideActivePart();
		u38.clearCloserParts();
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHoldFar" });
		return;
	end;
	u1.holdingCuffs = true;
	u38.updateCloserParts(true);
	u7.InitPlrAnimation(p245 and u1.setToolPoses[p245.Name] and "DefaultHoldFar", "ToolAnimation");
end;
u1["Tongue Depressor_ActChange"] = function(p248, p249, p250, p251)
	u14 = u7.RandomString(6);
	if not p248 then
		u6 = false;
		u7.InitPlrAnimation("", "ToolAnimation", { "DefaultHoldFar" });
		return;
	end;
	u7.InitPlrAnimation(p249 and u1.setToolPoses[p249.Name] and "DefaultHoldFar", "ToolAnimation");
	pcall(function()
		coroutine.wrap(function()
			while task.wait(0.1) and u14 == u14 do
				local v232 = v2.figUpperTorso and v2.figUpperTorso.CFrame + -v2.figUpperTorso.CFrame.UpVector * v2.figUpperTorso.Size.Y / 2 + v2.figUpperTorso.CFrame.LookVector * v2.figUpperTorso.Size.Z / 2;
				local l__rArmOffsetPercent__233 = v2.Figure:FindFirstChild("rArmOffsetPercent");
				if v232 and l__rArmOffsetPercent__233 and l__rArmOffsetPercent__233.Value.X > 0.4 and ((v2.Figure:FindFirstChild("RightHand") and v2.Figure:FindFirstChild("RightHand"):FindFirstChild("RightGripAttachment")).WorldCFrame.p - v232.p).magnitude <= 1 then
					p249.Parent = v2.ToolPack;
				end;			
			end;
		end)();
	end);
end;
local u39 = require(script.Parent);
function u1.initDropTool(p252, p253)
	if u39 and u39.isOnboardingActive() then
		return;
	end;
	if p252 and p252:FindFirstChild("CanBeDropped") and v2.figHumanoid and v2.figHumanoid.Health > 0 then
		u1.onToolActChanged(p252, false, true);
		task.wait(0.15);
		p252.Parent = workspace;
		u7.InitToolAsync(p252, false, false, true);
		if v2.activeTool and (not (not p253) and v2.activeTool == p253(p252) or not p253) then
			v2.activeTool = nil;
		end;
	end;
end;
function u1.setToolPose(p254, p255)
	local l__pose__234 = p255.pose;
	if not u6 and u1.pendingToolPose and (v2.activeTool and v2.activeTool.tool) == u1.pendingToolPose.tool then
		if v2.figAnimator then
			local v235 = v2.figAnimator:GetPlayingAnimationTracks() or {};
		else
			v235 = {};
		end;
		for v236, v237 in pairs(v235) do
			if string.find(v237.Name, "Hold") then
				v237:Stop(v2.Animations[v237.Name] and v2.Animations[v237.Name].StopFade or 0.1);
				v237:Destroy();
			end;
		end;
		u7.InitPlrAnimation(l__pose__234, "ToolAnimation", u1.changableToolPoses);
	end;
	if u1.pendingToolPose then
		u1.setToolPoses[u1.pendingToolPose.tool.Name] = l__pose__234;
	end;
	u1.pendingToolPose = nil;
end;
function u1.clearToolPose()
	if u1.pendingToolPose then
		u1.setToolPoses[u1.pendingToolPose.tool.Name] = nil;
	end;
end;
local u40 = { "Clipboard", "Fire Extinguisher", "Assault Rifle", "Assault Waffle" };
function u1.onToolActChanged(p256, p257, p258)
	local v238 = p256 and p256:FindFirstChild("Properties");
	local v239 = v238 and v238:FindFirstChild("ToolType");
	if p256 and v238 and v239 then
		v2.isHeldInputTool = u7.CheckForEntityInArray(p256.Name, u40) or p257;
		local u41 = v239.Value ~= "Custom" and v239.Value ~= "" and string.upper(v239.Value) or (v239.Value == "Custom" and p256.Name or "null");
		coroutine.wrap(function()
			if u1[u41 .. "_ActChange"] then
				if p257 == true then
					u3 = u7.RandomString(12);
				end;
				u1[u41 .. "_ActChange"](p257, p256, v238, p258);
			end;
		end)();
	end;
end;
return u1;
