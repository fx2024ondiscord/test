--virus

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v18,v19) local v20={};for v39=1, #v18 do v6(v20,v0(v4(v1(v2(v18,v39,v39 + 1 )),v1(v2(v19,1 + (v39% #v19) ,1 + (v39% #v19) + 1 )))%256 ));end return v5(v20);end local v8=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\17\200\58\201\245\32\204\62\192\248\16\217\37\215\253\36\200","\156\67\173\74\165"));local v10=game:GetService(v7("\6\162\71\37\185\52\80\61\180\76","\38\84\215\41\118\220\70"));local v11=game:GetService(v7("\101\5\39\0\215\94\6\55\6\205\85\4\52\27\253\85","\158\48\118\66\114"));local v12=v8.LocalPlayer;local v13=v9:WaitForChild(v7("\135\45\23\62\103\182\250\169\33\2\4\118\168\244\191\33\3","\155\203\68\112\86\19\197"));local v14={[v7("\99\211\55\254\76\125\225","\152\38\189\86\156\32\24\133")]=false,[v7("\221\66\179\73\222\91\168\69\247","\38\156\55\199")]=true,[v7("\137\104\104\39\35\117\232\81\177","\35\200\29\28\72\115\20\154")]=true,[v7("\56\170\197\208\172\56\32\24\188\218","\84\121\223\177\191\237\76")]=true,[v7("\153\90\198\163\49\98\49\207\188\83","\161\219\54\169\192\90\48\80")]=1429 -(450 + 959) ,[v7("\104\86\20\36\74\73\50\36\71\69\5","\69\41\34\96")]=2005 -(582 + 1408) ,[v7("\136\204\208\13\14\46\151\198\206","\75\220\163\183\106\98")]=Enum.KeyCode.B};local function v15() local v21=0 -0 ;local v22;local v23;local v24;local v25;local v26;local v27;local v28;local v29;local v30;local v31;while true do if ((2 -0)==v21) then v23.Position=UDim2.new(0.8 -0 ,1824 -(1195 + 629) ,0.3 -0 ,241 -(187 + 54) );v23.Size=UDim2.new(780 -(162 + 618) ,141 + 59 ,0 + 0 ,383 -203 );v23.Active=true;v23.Draggable=true;v29.Parent=v23;v24.Name=v7("\252\39\52\140\177","\156\168\78\64\224\212\121");v21=3;end if (v21==1) then v28=Instance.new(v7("\191\245\42\73\218\178\159\228\61\83","\199\235\144\82\61\152"));v29=Instance.new(v7("\50\63\154\36\21\24\188\57","\75\103\118\217"));v22.Parent=game.CoreGui;v23.Name=v7("\241\93\98\1\170\57\242\125","\126\167\52\16\116\217");v23.Parent=v22;v23.BackgroundColor3=Color3.fromRGB(50 -20 ,3 + 27 ,1666 -(1373 + 263) );v21=1002 -(451 + 549) ;end if (v21==(2 + 2)) then v24.TextSize=21 -7 ;v30=nil;function v30(v64,v65) local v66=0;local v67;local v68;local v69;while true do if (v66==(1 -0)) then v69=nil;while true do if (0==v67) then v68=Instance.new(v7("\98\45\71\44\7\75\236\66\39\81","\152\54\72\63\88\69\62"));v68.Parent=v23;v68.BackgroundColor3=Color3.fromRGB(1429 -(746 + 638) ,17 + 28 ,68 -23 );v68.Position=UDim2.new(341.1 -(218 + 123) ,0,v65,1581 -(1535 + 46) );v67=1 + 0 ;end if (v67==(1 + 0)) then v68.Size=UDim2.new(560.8 -(306 + 254) ,0,0,2 + 23 );v68.Font=Enum.Font.GothamSemibold;v68.Text=v64   .. v7("\142\132\193\122\242","\60\180\164\142") ;v68.TextColor3=Color3.fromRGB(500 -245 ,255,1722 -(899 + 568) );v67=2;end if (v67==2) then v68.TextSize=10 + 4 ;v69=Instance.new(v7("\109\119\38\38\53\227\23\74","\114\56\62\101\73\71\141"));v69.Parent=v68;return v68;end end break;end if (v66==(0 -0)) then v67=0;v68=nil;v66=604 -(268 + 335) ;end end end v25=v30(v7("\149\232\200\208\189\251\155\240\183\238\220\200\189","\164\216\137\187"),290.25 -(60 + 230) );v26=v30(v7("\243\243\37\189\230\220\7\221\229\58","\107\178\134\81\210\198\158"),572.4 -(426 + 146) );v27=v30(v7("\25\27\150\201\234\8\15\144\212\179","\202\88\110\226\166"),0.55 + 0 );v21=5;end if (v21==6) then v28.MouseButton1Click:Connect(function() local v70=1456 -(282 + 1174) ;while true do if (v70==(811 -(569 + 242))) then v14.AutoAttack= not v14.AutoAttack;v31(v28,v14.AutoAttack);break;end end end);break;end if (v21==5) then v28=v30(v7("\226\26\150\248\138\226\27\150\246\201\200","\170\163\111\226\151"),0.7 -0 );v31=nil;function v31(v71,v72) local v73=0 + 0 ;local v74;while true do if ((1024 -(706 + 318))==v73) then v74=0;while true do if (v74==(1251 -(721 + 530))) then v71.Text=v71.Text:gsub(v7("\62\30\174\23\104\17","\73\113\80\210\88\46\87"),(v72 and v7("\174\2","\135\225\76\173\114")) or v7("\53\203\158","\199\122\141\216\208\204\221") );v71.BackgroundColor3=(v72 and Color3.fromRGB(1271 -(945 + 326) ,637 -382 ,0 + 0 )) or Color3.fromRGB(255,700 -(271 + 429) ,0) ;break;end end break;end end end v25.MouseButton1Click:Connect(function() local v75=0 + 0 ;while true do if (v75==0) then v14.Enabled= not v14.Enabled;v31(v25,v14.Enabled);break;end end end);v26.MouseButton1Click:Connect(function() local v76=1500 -(1408 + 92) ;while true do if (v76==0) then v14.AutoBlock= not v14.AutoBlock;v31(v26,v14.AutoBlock);break;end end end);v27.MouseButton1Click:Connect(function() local v77=0;while true do if (v77==(1086 -(461 + 625))) then v14.AutoParry= not v14.AutoParry;v31(v27,v14.AutoParry);break;end end end);v21=1294 -(993 + 295) ;end if (v21==0) then v22=Instance.new(v7("\49\185\153\50\220\12\157\158\62","\185\98\218\235\87"));v23=Instance.new(v7("\237\46\38\235\219","\202\171\92\71\134\190"));v24=Instance.new(v7("\29\196\52\156\5\192\46\141\37","\232\73\161\76"));v25=Instance.new(v7("\143\220\90\73\60\174\205\86\82\16","\126\219\185\34\61"));v26=Instance.new(v7("\56\203\70\102\92\98\231\243\3\192","\135\108\174\62\18\30\23\147"));v27=Instance.new(v7("\130\236\50\223\58\187\39\211\185\231","\167\214\137\74\171\120\206\83"));v21=1 + 0 ;end if (v21==(1174 -(418 + 753))) then v24.Parent=v23;v24.BackgroundColor3=Color3.fromRGB(18 + 27 ,5 + 40 ,45);v24.Size=UDim2.new(1 + 0 ,0 + 0 ,529 -(406 + 123) ,1799 -(1749 + 20) );v24.Font=Enum.Font.GothamBold;v24.Text=v7("\43\231\162\198\19\253\164\204\2\252\229\227\6\253\177\203\21\174\179\159\73\190\229\204\30\174\163\214","\174\103\142\197");v24.TextColor3=Color3.fromRGB(61 + 194 ,1577 -(1249 + 73) ,91 + 164 );v21=1149 -(466 + 679) ;end end end local function v16() local v32,v33=nil,math.huge;local v34=v12.Character;if  not v34 then return nil;end local v35=v34:FindFirstChild(v7("\133\200\29\241\118\249\164\217\34\255\119\226\157\220\2\228","\150\205\189\112\144\24"));if  not v35 then return nil;end for v40,v41 in pairs(v8:GetPlayers()) do if (v41~=v12) then local v63=v41.Character;if v63 then local v78=v63:FindFirstChild(v7("\13\145\178\77\10\135\24\20\23\139\176\88\52\137\3\4","\112\69\228\223\44\100\232\113"));if v78 then local v83=0 -0 ;local v84;while true do if (v83==(0 -0)) then v84=(v78.Position-v35.Position).Magnitude;if (v84<v33) then v33,v32=v84,{[v7("\196\19\6\202\179\110","\230\180\127\103\179\214\28")]=v41,[v7("\136\12\76\82\229\79\227\137","\128\236\101\63\38\132\33")]=v84};end break;end end end end end end return v32;end v10.Heartbeat:Connect(function() if  not v14.Enabled then return;end local v36=v16();if  not v36 then return;end if  not v12.Character:FindFirstChild(v7("\128\160\22\76\162\248\206\174\172\3","\175\204\201\113\36\214\139")) then v13.Equip:FireServer();wait(0.1);end if (v14.AutoBlock and (v36.distance<=v14.BlockRange)) then v13.Block:FireServer();else v13.Unblock:FireServer();end if (v14.AutoAttack and (v36.distance<=v14.AttackRange)) then local v42=1900 -(106 + 1794) ;while true do if (v42==0) then v13.Attack:FireServer(3 + 5 ,1,false,false);v13.Swing:FireServer();break;end end end end);v15();v11.InputBegan:Connect(function(v37,v38) if ( not v38 and (v37.KeyCode==v14.ToggleKey)) then v14.Enabled= not v14.Enabled;end end);v13.StartGame:FireServer();local v17={[1 + 0 ]=v7("\16\152\99\196\87\17\156","\100\39\172\85\188"),[2]={[v7("\139\119\171\131\54","\83\205\24\217\224")]={[2 -1 ]=0.803 -0 ,[2]=0,[117 -(4 + 110) ]=584.912 -(57 + 527) ,[1431 -(41 + 1386) ]=103 -(17 + 86) },[v7("\204\208\192\45","\93\134\165\173")]={[1 + 0 ]=0.803 -0 ,[2]=0 -0 ,[169 -(122 + 44) ]=0.627 -0 ,[12 -8 ]=0},[v7("\146\253\194\201","\30\222\146\161\162\90\174\210")]={[1 + 0 ]=0.798 + 0 ,[3 -1 ]=65 -(30 + 35) ,[3 + 0 ]=1257.2 -(1043 + 214) ,[4]=0},[v7("\214\66\113\26","\106\133\46\16")]={[3 -2 ]=1212.501 -(323 + 889) ,[5 -3 ]=580 -(361 + 219) ,[3]=320.536 -(53 + 267) ,[4]=0 + 0 },[v7("\123\50\124\233\89\72","\32\56\64\19\156\58")]={[1]=0.197,[415 -(15 + 398) ]=982 -(18 + 964) ,[11 -8 ]=0.44 + 0 ,[3 + 1 ]=850 -(20 + 830) },[v7("\126\221\224\90","\224\58\168\133\54\58\146")]={[1]=0.64 + 0 ,[128 -(116 + 10) ]=0,[1 + 2 ]=738.25 -(542 + 196) ,[8 -4 ]=0 + 0 },[v7("\110\87\71\246","\107\57\54\43\157\21\230\231")]={[1]=0.802,[2 + 0 ]=0 + 0 ,[7 -4 ]=0.44 -0 ,[4]=0},[v7("\255\153\16\242","\175\187\235\113\149\217\188")]={[1552 -(1126 + 425) ]=405.798 -(118 + 287) ,[7 -5 ]=0,[1124 -(118 + 1003) ]=0.1,[4]=0},[v7("\15\184\128\92\197\118\106\63\170","\24\92\207\225\44\131\25")]={[1]=0.803,[5 -3 ]=377 -(142 + 235) ,[13 -10 ]=0.78,[1 + 3 ]=977 -(553 + 424) },[v7("\98\212\182\69\15\120","\29\43\179\216\44\123")]={[1 -0 ]=0.798 + 0 ,[2]=0,[3 + 0 ]=0.3,[4]=0 + 0 },[v7("\137\209\50\67\170","\44\221\185\64")]={[1 + 0 ]=0.197 + 0 ,[2]=0 -0 ,[7 -4 ]=0.912 -0 ,[4]=0},[v7("\35\235\71\92\120","\19\97\135\40\63")]={[1 + 0 ]=0.197,[9 -7 ]=0,[756 -(239 + 514) ]=0.63,[2 + 2 ]=0},[v7("\157\75\50\43\2\62\170\89","\81\206\60\83\91\79")]={[1330 -(797 + 532) ]=0.64 + 0 ,[1 + 1 ]=0,[6 -3 ]=0.15,[4]=0},[v7("\111\191\196\115\44\200","\196\46\203\176\18\79\163\45")]={[1203 -(373 + 829) ]=731.501 -(476 + 255) ,[1132 -(369 + 761) ]=0 + 0 ,[5 -2 ]=0.771 -0 ,[242 -(64 + 174) ]=0}}};v13.SetGuiPosition:FireServer(unpack(v17));
