----- AUTO GENERATED - DO NOT EDIT

if GetLocale() ~= "ruRU" then
    return
end

loadstring([[
local BtWQuests = BtWQuests
local i = {
    {
        name = "The War Within",
        type = "expansion",
        link = "btwquests:expansion:10",
    },
    {
        name = "Introduction",
        type = "chain",
        link = "btwquests:chain:110001",
        path = "The War Within",
    },
    {
        name = "Сокрытая война",
        type = "quest",
        restrictions = 924,
        link = "btwquests:chain:110001",
        scrollTo = {
            type = "quest",
            id = 81930,
        },
        path = "The War Within > Introduction",
        tooltip = "quest:81930",
    },
    {
        name = "Сокрытая война",
        type = "quest",
        link = "btwquests:chain:110001",
        scrollTo = {
            type = "quest",
            id = 78713,
        },
        path = "The War Within > Introduction",
        tooltip = "quest:78713",
    },
    {
        name = "Вам не рады",
        type = "quest",
        link = "btwquests:chain:110001",
        scrollTo = {
            type = "quest",
            id = 78714,
        },
        path = "The War Within > Introduction",
        tooltip = "quest:78714",
    },
    {
        name = "Голос Азерот",
        type = "quest",
        link = "btwquests:chain:110001",
        scrollTo = {
            type = "quest",
            id = 78715,
        },
        path = "The War Within > Introduction",
        tooltip = "quest:78715",
    },
    {
        name = "Горькие уроки",
        type = "quest",
        link = "btwquests:chain:110001",
        scrollTo = {
            type = "quest",
            id = 78716,
        },
        path = "The War Within > Introduction",
        tooltip = "quest:78716",
    },
    {
        name = "Семейство Бронзобородов",
        type = "quest",
        link = "btwquests:chain:110001",
        scrollTo = {
            type = "quest",
            id = 80500,
        },
        path = "The War Within > Introduction",
        tooltip = "quest:80500",
    },
    {
        name = "Воспоминания о былых приключениях",
        type = "quest",
        link = "btwquests:chain:110001",
        scrollTo = {
            type = "quest",
            id = 82540,
        },
        path = "The War Within > Introduction",
        tooltip = "quest:82540",
    },
    {
        name = "Prologue",
        type = "chain",
        link = "btwquests:chain:110091",
        path = "The War Within",
    },
    {
        name = "Archmage Khadgar",
        type = "npc",
        link = "btwquests:chain:110091",
        scrollTo = {
            type = "npc",
            id = 213627,
        },
        path = "The War Within > Prologue",
    },
    {
        name = "Сияющие отголоски",
        type = "quest",
        link = "btwquests:chain:110091",
        scrollTo = {
            type = "quest",
            id = 82539,
        },
        path = "The War Within > Prologue",
        tooltip = "quest:82539",
    },
    {
        name = "Воспоминания о былых приключениях",
        type = "quest",
        link = "btwquests:chain:110091",
        scrollTo = {
            type = "quest",
            id = 82540,
        },
        path = "The War Within > Prologue",
        tooltip = "quest:82540",
    },
}

BtWQuestsDatabase:AddSearchBuckets({
    ["e t"] = { i[1], },
    ["c t"] = { i[2], },
    ["d t"] = { i[2], },
    ["a t"] = { i[1], },
    ["не"] = { i[5], },
    ["n t"] = { i[1], i[2], },
    ["i t"] = { i[1], i[2], },
    ["h t"] = { i[1], },
    ["u t"] = { i[2], },
    ["in "] = { i[1], },
    ["t t"] = { i[1], i[2], },
    ["r t"] = { i[1], i[2], },
    ["Аз"] = { i[6], },
    ["on "] = { i[2], },
    ["chm"] = { i[11], },
    ["w t"] = { i[1], },
    ["ме"] = { i[8], },
    ["thi"] = { i[1], },
    ["ик"] = { i[9], i[13], },
    ["the"] = { i[1], },
    ["a w"] = { i[1], },
    ["т "] = { i[6], },
    ["e w"] = { i[1], },
    ["h w"] = { i[1], },
    ["i w"] = { i[1], },
    ["об"] = { i[8], },
    ["n w"] = { i[1], },
    ["нз"] = { i[8], },
    ["r w"] = { i[1], },
    ["t w"] = { i[1], },
    ["w w"] = { i[1], },
    ["m a"] = { i[11], },
    ["n a"] = { i[1], },
    ["o d"] = { i[2], },
    ["l l"] = { i[10], },
    ["u d"] = { i[2], },
    ["r d"] = { i[2], i[11], },
    ["o l"] = { i[10], },
    ["t a"] = { i[1], },
    ["i d"] = { i[2], },
    ["рь"] = { i[7], },
    ["с "] = { i[6], },
    ["u l"] = { i[10], },
    ["log"] = { i[10], },
    ["k d"] = { i[11], },
    ["ад"] = { i[5], },
    ["a a"] = { i[1], i[11], },
    ["c a"] = { i[11], },
    ["лы"] = { i[9], i[13], },
    ["e a"] = { i[1], i[11], },
    ["g a"] = { i[11], },
    ["м "] = { i[5], },
    ["i a"] = { i[1], },
    ["k a"] = { i[11], },
    ["pro"] = { i[10], },
    ["ни"] = { i[9], i[13], },
    ["лю"] = { i[9], i[13], },
    ["ра"] = { i[5], },
    ["ом"] = { i[9], i[13], },
    ["tro"] = { i[2], },
    ["a d"] = { i[11], },
    ["d d"] = { i[2], i[11], },
    ["e d"] = { i[11], },
    ["c d"] = { i[2], i[11], },
    ["e l"] = { i[10], },
    ["g l"] = { i[10], },
    ["ыт"] = { i[3], i[4], },
    ["од"] = { i[8], },
    ["пр"] = { i[9], i[13], },
    ["e n"] = { i[1], },
    ["d n"] = { i[2], },
    ["c n"] = { i[2], },
    ["a n"] = { i[1], },
    ["тг"] = { i[12], },
    ["n n"] = { i[1], i[2], },
    ["i n"] = { i[1], i[2], },
    ["h n"] = { i[1], },
    ["ая"] = { i[3], i[4], },
    ["u n"] = { i[2], },
    ["t n"] = { i[1], i[2], },
    ["r n"] = { i[1], i[2], },
    ["о "] = { i[8], i[9], i[13], },
    ["o n"] = { i[2], },
    ["бы"] = { i[9], i[13], },
    ["ор"] = { i[7], i[8], },
    ["до"] = { i[8], },
    ["c r"] = { i[2], i[11], },
    ["d r"] = { i[2], i[11], },
    ["e r"] = { i[1], i[10], i[11], },
    ["Се"] = { i[8], },
    ["a r"] = { i[1], i[11], },
    ["k r"] = { i[11], },
    ["l r"] = { i[10], },
    ["ам"] = { i[5], },
    ["n r"] = { i[1], i[2], },
    ["ой"] = { i[3], i[4], },
    ["h r"] = { i[1], i[11], },
    ["i r"] = { i[1], i[2], },
    ["int"] = { i[2], },
    ["ыл"] = { i[9], i[13], },
    ["Си"] = { i[12], },
    ["ок"] = { i[3], i[4], i[7], },
    ["ion"] = { i[2], },
    ["c o"] = { i[2], },
    ["d o"] = { i[2], },
    ["n o"] = { i[2], },
    ["на"] = { i[3], i[4], i[9], i[13], },
    ["l o"] = { i[10], },
    ["i o"] = { i[2], },
    ["g o"] = { i[10], },
    ["u o"] = { i[2], i[10], },
    ["t o"] = { i[2], },
    ["r o"] = { i[2], i[10], },
    ["o o"] = { i[2], i[10], },
    ["w n"] = { i[1], },
    ["Го"] = { i[6], i[7], },
    ["n u"] = { i[2], },
    ["l u"] = { i[10], },
    ["i u"] = { i[2], },
    ["ue "] = { i[10], },
    ["g u"] = { i[10], },
    ["u u"] = { i[2], i[10], },
    ["бо"] = { i[8], },
    ["r u"] = { i[2], i[10], },
    ["кл"] = { i[9], i[13], },
    ["p u"] = { i[10], },
    ["o u"] = { i[2], i[10], },
    ["ро"] = { i[6], i[7], i[8], },
    ["duc"] = { i[2], },
    ["rod"] = { i[2], },
    ["war"] = { i[1], },
    ["Со"] = { i[3], i[4], },
    ["та"] = { i[3], i[4], },
    ["ло"] = { i[6], i[12], },
    ["dga"] = { i[11], },
    ["яю"] = { i[12], },
    ["rol"] = { i[10], },
    ["e u"] = { i[10], },
    ["d u"] = { i[2], },
    ["olo"] = { i[10], },
    ["ях"] = { i[9], i[13], },
    ["i e"] = { i[1], },
    ["h e"] = { i[1], i[11], },
    ["u r"] = { i[2], i[10], },
    ["o r"] = { i[2], i[10], },
    ["h i"] = { i[1], },
    ["e i"] = { i[1], },
    ["r r"] = { i[1], i[2], i[10], i[11], },
    ["a e"] = { i[1], i[11], },
    ["d i"] = { i[2], },
    ["a i"] = { i[1], },
    ["e e"] = { i[1], i[10], i[11], },
    ["ры"] = { i[3], i[4], },
    ["c e"] = { i[11], },
    ["ды"] = { i[5], },
    ["g c"] = { i[11], },
    ["i c"] = { i[2], },
    ["l g"] = { i[10], },
    ["ем"] = { i[8], },
    ["тв"] = { i[8], },
    ["h g"] = { i[11], },
    ["a g"] = { i[11], },
    ["t i"] = { i[1], i[2], },
    ["o e"] = { i[10], },
    ["n e"] = { i[1], },
    ["c c"] = { i[2], i[11], },
    ["t e"] = { i[1], },
    ["e c"] = { i[11], },
    ["n i"] = { i[1], i[2], },
    ["от"] = { i[6], i[12], },
    ["g d"] = { i[11], },
    ["го"] = { i[12], },
    ["u g"] = { i[10], },
    ["щи"] = { i[12], },
    ["ющ"] = { i[12], },
    ["h d"] = { i[11], },
    ["o c"] = { i[2], },
    ["он"] = { i[8], },
    ["h c"] = { i[11], },
    ["h m"] = { i[11], },
    ["m g"] = { i[11], },
    ["r c"] = { i[2], i[11], },
    ["u c"] = { i[2], },
    ["t c"] = { i[2], },
    ["h k"] = { i[11], },
    ["g h"] = { i[11], },
    ["ск"] = { i[12], },
    ["g m"] = { i[11], },
    ["ge "] = { i[11], },
    ["he "] = { i[1], },
    ["Бр"] = { i[8], },
    ["arc"] = { i[11], },
    ["юч"] = { i[9], i[13], },
    ["had"] = { i[11], },
    ["e m"] = { i[11], },
    ["ntr"] = { i[2], },
    ["ур"] = { i[7], },
    ["mag"] = { i[11], },
    ["hma"] = { i[11], },
    ["d g"] = { i[11], },
    ["t h"] = { i[1], },
    ["d e"] = { i[11], },
    ["ол"] = { i[6], i[12], },
    ["cti"] = { i[2], },
    ["ми"] = { i[9], i[13], },
    ["g p"] = { i[10], },
    ["n h"] = { i[1], },
    ["m h"] = { i[11], },
    ["d a"] = { i[11], },
    ["k h"] = { i[11], },
    ["d m"] = { i[11], },
    ["i h"] = { i[1], },
    ["h h"] = { i[1], i[11], },
    ["o p"] = { i[10], },
    ["r p"] = { i[10], },
    ["e h"] = { i[1], i[11], },
    ["t r"] = { i[1], i[2], },
    ["c h"] = { i[11], },
    ["ан"] = { i[9], i[13], },
    ["c g"] = { i[11], },
    ["c m"] = { i[11], },
    ["ей"] = { i[8], },
    ["c k"] = { i[11], },
    ["r m"] = { i[11], },
    ["w i"] = { i[1], },
    ["a c"] = { i[11], },
    ["tio"] = { i[2], },
    ["a m"] = { i[11], },
    ["e o"] = { i[10], },
    ["w h"] = { i[1], },
    ["m e"] = { i[11], },
    ["m d"] = { i[11], },
    ["m c"] = { i[11], },
    ["е "] = { i[5], i[7], i[12], },
    ["m r"] = { i[11], },
    ["йс"] = { i[8], },
    ["по"] = { i[9], i[13], },
    ["m m"] = { i[11], },
    ["u p"] = { i[10], },
    ["k g"] = { i[11], },
    ["k e"] = { i[11], },
    ["k c"] = { i[11], },
    ["k m"] = { i[11], },
    ["adg"] = { i[11], },
    ["i i"] = { i[1], i[2], },
    ["gar"] = { i[11], },
    ["ие"] = { i[7], i[12], },
    ["kha"] = { i[11], },
    ["d h"] = { i[11], },
    ["age"] = { i[11], },
    ["зе"] = { i[6], },
    ["a h"] = { i[1], i[11], },
    ["g g"] = { i[10], i[11], },
    ["ых"] = { i[9], i[13], },
    ["йн"] = { i[3], i[4], },
    ["c i"] = { i[2], },
    ["t u"] = { i[2], },
    ["g e"] = { i[10], i[11], },
    ["hin"] = { i[1], },
    ["e p"] = { i[10], },
    ["o t"] = { i[2], },
    ["g r"] = { i[10], i[11], },
    ["p g"] = { i[10], },
    ["p p"] = { i[10], },
    ["кр"] = { i[3], i[4], },
    ["p o"] = { i[10], },
    ["х "] = { i[9], i[13], },
    ["Во"] = { i[9], i[13], },
    ["p e"] = { i[10], },
    ["я "] = { i[3], i[4], i[9], i[13], },
    ["ки"] = { i[7], i[12], },
    ["p l"] = { i[10], },
    ["ов"] = { i[8], },
    ["p r"] = { i[10], },
    ["o g"] = { i[10], },
    ["e g"] = { i[10], i[11], },
    ["ith"] = { i[1], },
    ["а "] = { i[3], i[4], },
    ["odu"] = { i[2], },
    ["Ва"] = { i[5], },
    ["ри"] = { i[9], i[13], },
    ["ст"] = { i[8], },
    ["a k"] = { i[11], },
    ["c u"] = { i[2], },
    ["g k"] = { i[11], },
    ["l e"] = { i[10], },
    ["e k"] = { i[11], },
    ["d k"] = { i[11], },
    ["k k"] = { i[11], },
    ["t d"] = { i[2], },
    ["r a"] = { i[1], i[11], },
    ["ер"] = { i[6], },
    ["w a"] = { i[1], },
    ["w r"] = { i[1], },
    ["m k"] = { i[11], },
    ["w e"] = { i[1], },
    ["gue"] = { i[10], },
    ["r k"] = { i[11], },
    ["u i"] = { i[2], },
    ["u e"] = { i[10], },
    ["wit"] = { i[1], },
    ["r i"] = { i[1], i[2], },
    ["h a"] = { i[1], i[11], },
    ["l p"] = { i[10], },
    ["r e"] = { i[1], i[10], i[11], },
    ["сп"] = { i[9], i[13], },
    ["ogu"] = { i[10], },
    ["во"] = { i[3], i[4], i[8], },
    ["n c"] = { i[2], },
    ["r g"] = { i[10], i[11], },
    ["ия"] = { i[9], i[12], i[13], },
    ["r l"] = { i[10], },
    ["o i"] = { i[2], },
    ["ен"] = { i[9], i[13], },
    ["че"] = { i[9], i[13], },
    ["r h"] = { i[1], i[11], },
    ["ин"] = { i[9], i[13], },
    ["uct"] = { i[2], },
    ["rch"] = { i[11], },
    ["ос"] = { i[6], i[9], i[12], i[13], },
    ["в "] = { i[8], },
    ["зо"] = { i[8], },
    ["ar "] = { i[1], i[11], },
    ["и "] = { i[7], i[12], },
    ["ьк"] = { i[7], },
    ["ы "] = { i[5], },
    ["d c"] = { i[2], i[11], },
    ["n d"] = { i[2], },
})
]])()