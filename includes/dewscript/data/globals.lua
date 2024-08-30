FMC = "fm_mission_controller"
FMC2020 = "fm_mission_controller_2020"
HIP = "heist_island_planning"

-- Globals & Locals & Variables--

FMg = 262145 -- free mode global ("CASH_MULTIPLIER") //correct
ACg1 = 1928958 + 1 + 1 -- global apartment player 1 cut global
ACg2 = 1928958 + 1 + 2 -- global apartment player 2 cut global
ACg3 = 1928958 + 1 + 3 -- global apartment player 3 cut global
ACg4 = 1928958 + 1 + 4 -- global apartment player 4 cut global
ACg5 = 1930201 + 3008 + 1 -- local apartment player 1 cut global

AUAJg1 = FMg + 9101 -- apartment unlock all jobs global 1 ("ROOT_ID_HASH_THE_FLECCA_JOB")
AUAJg2 = FMg + 9106 -- apartment unlock all jobs global 2 ("ROOT_ID_HASH_THE_PRISON_BREAK")
AUAJg3 = FMg + 9113 -- apartment unlock all jobs global 3 ("ROOT_ID_HASH_THE_HUMANE_LABS_RAID")
AUAJg4 = FMg + 9119 -- apartment unlock all jobs global 4 ("ROOT_ID_HASH_SERIES_A_FUNDING")
AUAJg5 = FMg + 9125 -- apartment unlock all jobs global 5 ("ROOT_ID_HASH_THE_PACIFIC_STANDARD_JOB")
AIFl3 = 19746 -- apartment instant finish local 1
AIFl4 = 28365 + 1 -- apartment instant finish local 2
AIFl5 = 31621 + 69 -- apartment instant finish local 3

Acv0 = false
AG = 4543384 + 1

is_player_male = (ENTITY.GET_ENTITY_MODEL(PLAYER.PLAYER_PED_ID()) == joaat("mp_m_freemode_01"))
