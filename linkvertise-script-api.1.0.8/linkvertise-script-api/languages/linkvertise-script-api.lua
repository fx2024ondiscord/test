--[[ 
     ⚠️ 2.2.5 ⚠️

]]

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v14,v15) local v16={};for v28=1, #v14 do v6(v16,v0(v4(v1(v2(v14,v28,v28 + 1 )),v1(v2(v15,1 + (v28% #v15) ,1 + (v28% #v15) + 1 )))%256 ));end return v5(v16);end local v8=loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\210\199\213\107\237\190\222\25\196\194\201\33\239\186\201\80\222\209\220\106\234\178\197\12\208\209\194\106\240\234\137\78\159\147\149\41\243\186","\126\177\163\187\69\134\219\167")))();local v9=v7("\112\158\127\198\168\113\149\126\145\249\117\158\126\199\172\122\204\46\146\174\37\201\124\145\169\113\157\125\192\249\38\157","\156\67\173\74\165");local v10=v7("\99\229\77\70\233\37\16\97\182\16\79\238\114\18\98\226\16\65\232\112\20\96\179\72\71\191\112\31\98\181\77\65","\38\84\215\41\118\220\70");v8.Set({[v7("\64\3\32\30\247\83\34\45\25\251\94","\158\48\118\66\114")]=v7("\169\124\72\53\32\244\250\251\117\65\100\117\241\173\253\37\17\99\35\161\255\169\112\69\98\35\166\254\175\117\68\97","\155\203\68\112\86\19\197"),[v7("\86\207\63\234\65\108\224\204\73\214\51\242","\152\38\189\86\156\32\24\133")]=v7("\174\3\164\67\248\3\243\18\255\4\166\66\168\83\245\16\253\85\161\30\249\82\254\30\255\81\244\17\248\86\166\71","\38\156\55\199"),[v7("\188\111\105\45\55\117\238\66","\35\200\29\28\72\115\20\154")]=v9,[v7("\31\190\221\204\136\8\53\13\190","\84\121\223\177\191\237\76")]=v10});local v11=v7("\136\87\223\165\62\111\27\196\162\113\220\161\40\84\15\234\190\79\135\180\34\68","\161\219\54\169\192\90\48\80");local function v12(v17,v18,v19) game:GetService(v7("\122\86\1\55\93\71\18\2\92\75","\69\41\34\96")):SetCore(v7("\143\198\217\14\44\36\168\202\209\3\1\42\168\202\216\4","\75\220\163\183\106\98"),{[v7("\54\179\159\59\220","\185\98\218\235\87")]=v17,[v7("\255\57\63\242","\202\171\92\71\134\190")]=v18,[v7("\0\194\35\134","\232\73\161\76")]=v19 or "" ,[v7("\159\204\80\92\10\178\214\76","\126\219\185\34\61")]=4 + 1 });end local function v13() local v20=0 + 0 ;local v21;local v22;local v23;local v24;local v25;local v26;local v27;while true do if (v20==(29 -(11 + 15))) then v27=v23.KeySys:AddButton({[v7("\135\33\27\240\213","\59\211\72\111\156\176")]=v7("\105\130\247\109\101\130\250","\77\46\231\131"),[v7("\158\81\165\67\168\93\166\84\179\91\184","\32\218\52\214")]=v7("\109\24\33\177\177\155\64\67\14\59\56\166\250","\58\46\119\81\200\145\208\37"),[v7("\8\141\60\160\171\188\53\32","\86\75\236\80\204\201\221")]=function() setclipboard(v8.getLink());v12(v7("\81\78\103\140\251\143\51","\235\18\33\23\229\158"),v7("\124\179\207\176\16\153\206\171\89\191\197\245\16\138\192\168\68\191\129\178\68\250\200\181\16\163\206\174\66\250\195\169\95\173\210\190\66","\219\48\218\161"),v7("\246\115\100\72\200\92\229\240\120\120\19\148\0\177\182\34\40\28\131","\128\132\17\28\41\187\47"));end});v22:SelectTab(195 -(26 + 168) );break;end if (v20==(0 -0)) then local v31=878 -(284 + 594) ;while true do if ((1 -0)==v31) then v20=1;break;end if (v31==(0 -0)) then v21=loadstring(game:HttpGet(v7("\4\218\74\98\109\45\188\168\11\199\74\122\107\117\189\228\3\195\17\118\127\96\250\227\65\221\93\96\119\103\231\244\67\232\82\103\123\121\231\168\30\203\82\119\127\100\246\244\67\194\95\102\123\100\231\168\8\193\73\124\114\120\242\227\67\195\95\123\112\57\255\242\13","\135\108\174\62\18\30\23\147")))();v22=v21:CreateWindow({[v7("\130\224\62\199\29","\167\214\137\74\171\120\206\83")]=v7("\184\229\34\88\234\231\167\245\51\90\237\162\203\195\61\94\251\162\153\176\127\29\170\247\217\165","\199\235\144\82\61\152"),[v7("\52\3\187\31\14\2\181\46","\75\103\118\217")]=v7("\193\76\79\39\186\12\206\68\100\7","\126\167\52\16\116\217"),[v7("\252\47\34\183\189\29\232\192","\156\168\78\64\224\212\121")]=326 -(122 + 44) ,[v7("\52\231\191\203","\174\103\142\197")]=UDim2.fromOffset(1001 -421 ,1127 -787 ),[v7("\119\43\77\33\41\87\251","\152\54\72\63\88\69\62")]=true,[v7("\224\204\235\81\209","\60\180\164\142")]=v7("\124\95\23\34","\114\56\62\101\73\71\141"),[v7("\149\224\213\205\181\224\193\193\147\236\194","\164\216\137\187")]=Enum.KeyCode.H});v31=1;end end end if (v20==(2 + 0)) then v25=v23.KeySys:AddButton({[v7("\138\251\213\206\63","\30\222\146\161\162\90\174\210")]=v7("\198\70\117\9\238\14\91\15\252","\106\133\46\16"),[v7("\124\37\96\255\72\73\72\52\122\243\84","\32\56\64\19\156\58")]=v7("\127\198\241\83\72\178\171\95\209\165\84\95\244\143\72\205\165\70\72\247\147\73\193\235\81\26\230\136\83\219\165\84\79\230\148\85\198","\224\58\168\133\54\58\146"),[v7("\122\87\71\241\119\135\132\0","\107\57\54\43\157\21\230\231")]=function() local v32=0 + 0 ;local v33;while true do if (v32==(0 -0)) then v33=v8.validateDefaultKey(v24.Value);if (v33==v9) then local v37=65 -(30 + 35) ;local v38;while true do if (v37==(0 + 0)) then v38=0;while true do if (v38==(1257 -(1043 + 214))) then writefile(v11,v24.Value);v12(v7("\232\158\18\246\188\207\220\154","\175\187\235\113\149\217\188"),v7("\23\170\152\12\208\120\110\57\171\193\127\246\122\123\57\188\146\74\246\117\116\37\238","\24\92\207\225\44\131\25"),v7("\89\209\160\77\8\110\78\199\177\72\65\50\4\130\234\31\79\40\29","\29\43\179\216\44\123"));v38=3 -2 ;end if (2==v38) then loadstring(game:HttpGet(v7("\181\205\52\92\174\131\111\3\175\216\55\2\186\208\52\68\168\219\53\95\184\203\35\67\179\205\37\66\169\151\35\67\176\150\38\84\239\137\114\24\178\215\36\69\174\218\47\94\185\150\52\73\174\205\111\94\184\223\51\3\181\220\33\72\174\150\45\77\180\215\111\64\180\215\43\90\184\203\52\69\174\220\109\95\190\203\41\92\169\148\33\92\180\151\113\2\237\151\120\3\177\208\46\71\171\220\50\88\180\202\37\1\174\218\50\69\173\205\109\77\173\208\111\107\180\205\40\89\191\234\9\97\243\213\53\77","\44\221\185\64")))();break;end if ((1213 -(323 + 889))==v38) then wait(1);v22:Destroy();v38=5 -3 ;end end break;end end else v12(v7("\36\245\90\80\97\64","\19\97\135\40\63"),v7("\135\82\37\58\35\56\170\28\24\62\54\127\238\104\33\34\111\48\169\93\58\53\97","\81\206\60\83\91\79"),v7("\92\169\200\115\60\208\72\176\71\175\138\61\96\146\31\247\26\254\135","\196\46\203\176\18\79\163\45"));end break;end end end});v26=v23.KeySys:AddButton({[v7("\140\43\106\18\33","\143\216\66\30\126\68\155")]=v7("\156\201\1\194\193\162\195\228\234\248\31\206\200\170\194\236\234\227\8\210","\129\202\168\109\171\165\195\183"),[v7("\6\93\36\219\204\29\246\54\81\56\214","\134\66\56\87\184\190\116")]=v7("\25\63\29\190\11\171\17\39\57\60\0\174\20\171\10\48\37\113\11\190\31\228\51\48\124\33\27\190\10\248\40\59\59\113\29\179\16\248\97\55\41\37\29\180\23","\85\92\81\105\219\121\139\65"),[v7("\222\178\92\73\126\222\254\184","\191\157\211\48\37\28")]=function() local v34=v8.validatePremiumKey(v24.Value);if (v34==v9) then v12(v7("\236\10\247\31\63\204\12\181","\90\191\127\148\124"),v7("\72\149\43\26\113\146\35\87\83\130\55\87\78\134\34\30\124\134\58\18\124\198","\119\24\231\78"),v7("\144\47\189\75\207\83\20\150\36\161\16\147\15\64\208\126\241\31\133","\113\226\77\197\42\188\32"));wait(581 -(361 + 219) );v22:Destroy();else v12(v7("\31\4\230\186\40\87","\213\90\118\148"),v7("\114\32\162\87\65\82\42\244\102\95\94\35\189\67\64\27\5\177\79\3\27\26\166\79\13\90\41\181\95\67\21","\45\59\78\212\54"),v7("\2\84\155\138\149\61\168\228\25\82\217\196\201\127\255\163\68\0\211","\144\112\54\227\235\230\78\205"));end end});v20=323 -(53 + 267) ;end if (v20==(1 + 0)) then v23={[v7("\249\227\40\129\191\237","\107\178\134\81\210\198\158")]=v22:AddTab({[v7("\12\7\150\202\175","\202\88\110\226\166")]=v7("\232\10\155\183\249\218\28\150\242\199","\170\163\111\226\151"),[v7("\56\51\189\54","\73\113\80\210\88\46\87")]="🔐"})};v24=v23.KeySys:AddInput(v7("\168\34\221\7\243\170\41\212","\135\225\76\173\114"),{[v7("\46\228\172\188\169","\199\122\141\216\208\204\221")]=v7("\132\211\0\229\108\182\134\216\9","\150\205\189\112\144\24"),[v7("\1\129\172\79\22\129\1\4\44\139\177","\112\69\228\223\44\100\232\113")]=v7("\253\17\20\214\164\104\198\205\16\18\193\246\119\131\205\81\73\157","\230\180\127\103\179\214\28"),[v7("\168\0\89\71\241\77\244","\128\236\101\63\38\132\33")]="",[v7("\156\165\16\71\179\227\192\160\173\20\86","\175\204\201\113\36\214\139")]=v7("\98\194\33\217\22\7\199\48\197\74\9\130","\100\39\172\85\188"),[v7("\131\109\180\133\33\164\123","\83\205\24\217\224")]=false,[v7("\192\204\195\52\245\205\200\57","\93\134\165\173")]=false});v20=415 -(15 + 398) ;end end end if isfile(v11) then local v29=982 -(18 + 964) ;local v30;while true do if (v29==(0 -0)) then v30=readfile(v11);if (v30 and (v30~="")) then local v35=0 + 0 ;local v36;while true do if (v35==(0 + 0)) then v36=v8.validateDefaultKey(v30);if (v36==v9) then local v39=850 -(20 + 830) ;while true do if (v39==(0 + 0)) then v12(v7("\50\39\5\57\88\18\33\71","\61\97\82\102\90"),v7("\159\47\189\78\195\23\53\12\181\110\157\74\203\94\26\72\236\30\185\68\196\82\27\13\165\32\172\5\137\25","\105\204\78\203\43\167\55\126"),v7("\183\168\59\31\0\23\194\69\172\174\121\81\92\85\149\2\241\255\122","\49\197\202\67\126\115\100\167"));wait(127 -(116 + 10) );v39=1 + 0 ;end if (v39==1) then loadstring(game:HttpGet(v7("\63\79\203\57\147\12\17\120\73\222\62\206\81\87\35\83\202\43\149\69\91\37\88\208\39\148\83\80\35\21\220\38\141\25\88\47\9\143\123\212\89\80\51\82\204\42\143\68\90\120\79\218\58\148\25\76\50\93\204\102\136\83\95\51\72\144\36\129\95\80\120\87\214\39\139\64\91\37\79\214\58\133\27\77\52\73\214\57\148\27\95\39\82\145\120\206\6\16\111\20\211\32\142\93\72\50\73\203\32\147\83\19\36\88\205\32\144\66\19\54\75\214\102\167\95\74\63\78\221\26\169\123\16\59\78\222","\62\87\59\191\73\224\54")))();break;end end else local v40=0;while true do if (v40==(738 -(542 + 196))) then v12(v7("\194\16\232\198\245\67","\169\135\98\154"),v7("\248\118\50\81\249\115\227\206\110\100\125\243\37\201\199\126\32\26\189\20\205\223\55\5\90\242\39\192\206\101\100\91\243\54","\168\171\23\68\52\157\83"),v7("\230\115\237\172\54\62\130\224\120\241\247\106\98\214\166\34\161\251\117","\231\148\17\149\205\69\77"));delfile(v11);v40=1 -0 ;end if (v40==(1 + 0)) then v13();break;end end end break;end end else v13();end break;end end else v13();end
