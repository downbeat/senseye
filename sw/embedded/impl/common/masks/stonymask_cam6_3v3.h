const char stonymask[112*112]={78,73,75,69,68,78,68,72,60,67,84,51,66,65,75,60,67,59,64,76,74,66,74,72,81,85,69,64,76,72,63,73,65,79,49,66,66,83,71,73,67,75,69,62,52,68,59,65,69,64,63,71,54,71,70,74,66,61,69,78,59,59,63,67,66,63,79,78,75,75,68,72,74,73,64,70,72,76,84,71,61,73,59,75,71,72,66,65,74,79,57,66,68,79,72,69,68,71,61,72,63,70,70,71,75,62,79,74,80,69,68,66,36,35,30,42,43,33,39,30,32,46,40,28,32,22,16,39,33,25,22,38,39,38,39,31,37,43,36,30,29,24,28,26,46,48,36,21,23,32,19,34,38,27,3,30,21,40,46,27,37,30,34,23,31,32,25,36,28,33,34,38,36,31,27,45,30,32,36,33,54,46,40,31,16,43,30,36,24,43,41,39,27,13,32,46,36,30,32,38,24,39,37,38,33,35,30,36,33,48,36,35,36,39,35,36,39,32,34,41,41,32,28,55,31,42,38,38,40,32,42,22,37,16,42,30,37,47,44,39,38,43,42,46,47,32,21,34,47,32,34,30,22,33,30,35,51,42,46,30,38,42,34,41,27,26,38,40,35,49,38,25,41,32,37,38,41,49,41,38,35,53,36,38,49,36,39,35,29,44,49,39,44,27,49,36,30,37,37,42,50,47,43,39,24,21,36,36,43,44,36,29,40,39,52,39,40,30,27,44,41,29,42,41,42,48,39,42,30,37,43,28,47,53,39,37,41,36,41,33,41,33,36,44,43,36,42,30,28,22,21,42,34,28,35,43,49,31,27,40,40,35,43,40,32,36,36,34,42,51,52,40,36,42,36,31,39,30,42,37,30,32,48,41,45,37,28,32,32,35,55,40,33,52,23,45,39,33,48,40,28,51,47,43,34,42,50,43,23,40,54,40,48,51,40,51,21,25,38,52,41,34,47,37,34,41,50,32,32,42,30,39,36,37,39,45,51,51,37,47,41,33,42,35,50,41,29,44,35,35,43,44,33,38,28,40,32,34,34,28,37,39,35,47,41,28,36,44,30,29,43,39,35,37,36,48,41,31,27,44,31,46,48,30,40,27,44,43,44,34,39,40,34,47,50,34,40,33,22,42,30,48,44,25,31,44,28,48,36,24,35,36,39,35,41,51,39,32,46,43,38,34,45,32,37,46,43,31,39,25,28,35,42,41,47,38,40,37,43,46,38,35,33,37,48,45,37,38,43,39,41,39,44,31,33,29,28,36,40,45,38,30,40,40,42,43,27,35,23,12,40,28,30,26,39,33,32,33,32,50,34,18,35,37,33,43,26,37,36,33,35,19,38,30,35,28,14,32,35,35,18,24,24,26,24,32,28,24,36,34,29,31,28,29,36,41,30,27,48,15,20,37,37,28,37,28,36,28,42,33,43,31,35,28,34,31,44,39,28,38,24,20,33,39,44,31,41,37,41,33,38,31,34,44,26,29,29,30,44,31,35,37,59,40,34,29,39,19,40,29,26,39,44,37,38,39,39,39,43,34,28,38,50,7,35,27,36,53,34,31,32,56,34,30,22,41,44,29,39,37,43,35,31,38,37,49,44,25,40,35,37,38,34,26,38,51,33,33,46,33,34,42,31,32,29,38,32,25,31,43,43,34,25,38,37,37,37,32,36,51,33,32,38,19,31,31,41,44,35,42,51,40,31,32,22,59,40,33,37,24,42,54,47,30,36,38,39,28,45,41,36,33,49,48,29,54,25,34,25,38,44,32,32,50,32,15,51,36,32,46,35,45,32,44,39,17,36,37,32,36,42,34,42,59,49,37,39,40,36,35,41,25,40,42,37,34,39,39,39,40,40,41,42,41,31,32,36,37,28,31,20,30,43,40,34,38,37,46,38,28,32,36,37,42,37,42,43,34,46,37,45,44,45,17,51,40,36,38,43,26,37,46,46,51,30,30,35,54,40,43,38,33,51,47,51,31,40,41,43,46,32,51,50,41,56,47,47,36,35,45,35,50,44,33,36,62,36,13,34,44,37,37,44,25,42,29,45,19,45,36,36,32,43,29,34,38,42,38,38,33,37,44,44,30,43,34,38,52,34,54,36,32,32,26,23,41,38,37,41,42,31,37,42,35,36,45,32,39,34,46,35,47,41,50,53,35,28,40,44,40,35,38,47,42,37,37,43,40,37,37,43,30,47,26,57,48,42,29,33,48,44,49,33,34,45,40,52,23,50,38,28,31,38,45,35,34,42,41,49,43,44,36,48,30,42,39,47,44,37,21,38,33,41,30,49,37,28,18,44,9,31,41,24,29,20,28,31,41,37,19,30,41,42,22,24,36,36,18,20,49,34,43,37,28,21,35,38,37,32,37,25,37,23,28,29,40,43,40,34,34,21,51,22,35,46,30,40,30,30,19,31,43,42,25,32,37,44,34,46,21,34,25,43,23,47,45,36,41,33,27,28,47,44,42,43,32,45,39,44,35,46,45,31,34,29,40,27,40,42,43,38,45,49,30,39,17,41,31,29,40,47,26,25,42,30,29,47,30,20,42,55,36,17,22,32,31,24,30,36,41,49,26,43,33,36,24,29,43,43,32,24,21,31,50,38,36,30,43,30,48,33,36,34,32,15,38,46,41,38,42,51,29,29,21,38,17,34,29,41,35,41,32,38,41,38,31,28,32,29,31,49,29,41,36,34,37,36,32,32,45,25,33,43,42,40,28,32,39,50,44,49,43,29,37,22,32,40,31,48,43,33,48,51,49,38,42,38,39,30,36,30,47,35,33,33,26,29,44,41,38,24,41,41,18,40,37,31,37,31,33,44,50,53,28,43,46,33,31,39,33,32,43,29,41,50,50,43,48,31,42,28,39,34,36,41,36,33,28,41,35,42,40,33,45,35,44,22,34,29,41,44,35,23,29,44,42,35,45,38,40,39,53,39,31,27,34,44,39,40,51,51,54,34,36,31,45,35,43,35,34,28,46,51,29,36,36,32,22,37,32,38,33,36,52,37,55,38,39,38,50,46,41,34,58,37,28,29,41,42,41,33,33,28,26,45,28,25,40,30,25,33,39,41,47,30,35,46,47,25,36,20,39,41,34,39,40,46,46,37,38,27,41,48,35,40,25,50,37,30,33,40,32,48,35,40,32,31,48,47,53,38,38,38,37,31,40,41,48,30,40,49,42,38,32,45,33,33,30,34,34,41,44,41,36,53,40,39,45,40,41,42,35,47,45,39,16,32,34,41,34,29,32,34,38,37,47,47,36,33,42,48,38,47,29,33,53,43,28,35,30,29,27,32,47,21,25,59,29,32,28,29,36,30,39,18,40,21,4,28,25,29,22,27,29,33,31,37,22,35,45,35,25,23,38,39,39,37,39,22,27,36,23,36,34,39,42,31,14,43,47,36,35,31,48,40,33,35,35,39,35,21,27,43,39,32,29,42,36,34,42,24,40,29,39,35,38,31,27,19,33,46,41,23,31,26,33,49,35,23,38,21,23,47,35,40,48,37,45,46,34,38,27,43,34,52,37,39,41,34,34,32,27,32,31,39,31,21,36,37,36,41,38,22,34,27,34,39,46,34,31,32,35,33,38,19,25,24,33,28,18,35,57,44,22,35,34,42,42,31,20,41,36,28,22,36,48,38,22,36,27,27,38,42,45,27,39,48,42,31,38,45,42,28,25,33,38,32,38,35,37,23,35,39,43,41,42,40,36,18,30,22,44,38,32,41,34,40,37,38,36,38,33,33,32,35,40,28,53,43,35,35,41,36,29,38,43,47,42,42,42,34,32,44,16,27,38,40,38,37,28,34,25,26,43,17,39,30,34,39,36,45,38,37,43,33,34,16,45,41,39,36,34,49,49,35,34,26,36,34,49,30,30,34,41,22,27,41,30,36,31,41,34,38,38,46,40,39,29,42,32,31,29,33,39,31,41,28,30,32,38,34,47,35,37,37,39,40,53,39,48,43,36,34,42,43,29,36,36,46,41,44,43,33,35,23,47,47,44,31,39,40,43,43,45,31,35,39,43,34,38,35,45,39,17,25,30,41,45,30,39,28,31,39,33,34,29,39,39,32,37,29,48,34,10,34,37,35,38,39,32,40,39,24,47,29,46,49,37,35,42,32,41,19,30,37,49,29,33,33,29,46,40,36,31,31,39,28,37,31,45,33,36,24,44,41,40,32,44,39,40,38,38,59,41,33,47,38,25,34,49,36,48,31,31,27,47,47,39,36,40,44,36,45,33,36,34,43,38,40,54,42,39,42,49,44,43,40,36,44,29,52,42,31,46,30,36,30,39,44,44,26,36,28,35,30,22,35,23,28,41,22,31,22,50,30,21,45,43,30,39,25,36,39,42,17,36,45,47,39,12,32,40,42,44,34,18,35,36,29,26,31,32,30,26,26,29,35,32,45,29,32,35,31,18,31,34,38,32,36,41,39,30,38,24,33,18,34,44,40,33,22,52,40,51,25,42,22,47,41,25,45,48,36,42,52,31,44,35,36,36,50,29,44,29,36,37,43,44,47,37,39,36,46,34,34,40,28,18,38,18,25,39,37,38,23,27,49,31,43,42,21,29,19,25,20,43,39,32,20,36,28,16,22,44,26,42,37,42,40,31,36,23,33,52,30,41,33,24,42,24,23,27,45,32,42,49,41,30,29,47,46,33,35,32,39,50,28,27,38,32,15,28,29,44,49,31,50,28,34,21,31,18,38,40,26,32,33,32,35,49,29,35,31,31,49,32,36,32,24,42,47,39,42,33,50,46,39,40,34,39,31,37,31,38,47,36,25,47,45,29,52,40,36,34,46,42,27,33,46,27,18,46,21,42,21,21,32,50,38,29,24,52,30,34,46,45,39,26,24,31,47,33,33,40,27,38,44,38,38,35,38,25,27,42,34,31,29,41,49,38,33,44,38,35,41,47,39,45,26,27,50,42,20,34,38,38,34,36,43,39,39,34,39,42,41,40,35,48,38,40,31,54,23,17,23,34,26,43,46,33,36,34,44,43,38,50,38,41,45,34,43,34,40,24,56,29,56,44,41,54,47,34,33,39,37,42,31,49,34,33,49,36,41,41,39,40,20,28,34,59,24,47,39,47,42,27,30,30,25,39,35,34,34,36,42,34,24,30,41,51,31,38,45,45,35,42,31,45,56,30,45,32,38,39,46,31,34,33,40,40,36,33,37,41,35,45,42,41,37,40,50,53,42,33,29,37,37,51,44,45,41,39,31,52,33,49,30,40,53,34,48,37,37,39,30,29,43,31,47,32,36,45,35,46,37,31,43,36,42,44,45,48,38,30,41,22,31,47,41,38,40,29,42,20,45,39,33,35,30,24,18,50,19,31,27,44,28,38,18,28,41,19,20,30,42,39,53,20,9,30,40,31,24,29,31,26,27,40,31,36,44,52,41,39,37,38,38,42,25,35,50,34,43,22,34,34,33,37,31,34,30,36,50,32,37,32,39,52,46,48,49,35,27,44,29,54,44,31,24,20,36,28,35,33,25,26,14,35,37,42,43,35,42,44,41,32,29,14,42,36,38,32,27,50,42,21,28,25,35,29,25,35,35,32,38,16,29,32,25,31,41,28,26,51,31,28,34,28,32,19,32,25,38,31,34,38,32,37,40,29,22,25,27,31,19,32,40,32,33,36,27,45,30,33,27,42,44,41,35,31,24,29,37,26,14,38,30,49,27,31,27,39,41,44,35,37,29,35,33,44,38,33,27,41,34,35,30,45,37,22,37,27,46,30,32,31,32,52,32,27,45,39,36,33,48,42,40,29,47,25,36,38,35,37,31,42,41,27,32,43,30,37,27,29,33,39,42,23,29,33,31,33,32,38,38,37,39,44,40,29,34,41,49,31,33,28,17,39,46,47,45,27,25,37,42,44,37,38,37,41,35,47,37,32,29,38,46,19,29,48,30,46,23,39,39,41,40,39,39,53,32,33,45,32,38,30,43,34,48,29,43,37,32,33,42,46,36,34,31,46,41,33,41,32,41,25,43,36,31,34,37,28,34,39,43,41,35,36,33,47,24,41,51,38,43,38,38,54,42,46,37,18,49,32,35,30,45,34,52,24,43,35,23,45,42,28,33,40,42,21,40,41,28,46,31,38,34,33,36,52,22,40,47,29,28,20,37,35,43,31,34,29,44,38,40,36,33,27,38,18,39,38,47,48,28,45,32,40,38,31,45,24,37,43,40,41,33,24,48,46,39,33,43,35,47,46,45,44,30,46,32,46,45,38,33,23,40,41,51,41,33,41,42,47,43,35,40,29,43,47,39,42,30,34,47,42,45,35,37,30,38,33,35,32,32,35,37,47,22,32,30,17,23,41,35,43,46,22,24,46,43,25,51,39,25,38,31,24,39,25,31,49,42,37,33,28,25,23,40,37,35,30,34,33,28,35,51,42,35,51,46,42,39,35,36,43,42,38,36,31,28,40,40,34,37,34,47,47,35,42,48,39,42,36,40,42,47,34,38,40,23,33,34,42,45,46,34,33,42,25,47,36,25,40,22,30,39,41,37,33,42,48,31,41,36,33,35,30,45,36,32,47,37,27,37,24,28,23,33,29,22,28,33,33,29,33,30,38,16,25,29,48,38,36,22,25,33,33,40,34,29,33,27,44,32,32,38,22,23,44,39,33,10,24,19,31,24,44,27,38,38,27,40,43,37,41,29,43,28,29,33,22,46,30,20,40,13,35,27,36,36,39,44,19,36,34,27,28,35,29,33,36,41,30,27,54,27,42,35,25,48,29,57,40,37,45,33,37,32,41,34,42,27,26,34,23,34,15,30,43,31,31,35,45,39,33,30,40,39,33,44,33,17,27,41,29,40,49,30,33,30,39,35,36,34,30,38,34,21,39,41,46,42,31,28,31,40,41,26,37,25,38,38,31,37,25,32,34,45,38,41,45,32,38,41,42,32,47,48,44,37,55,44,29,40,35,52,33,43,35,45,55,43,41,33,37,34,45,23,42,45,48,36,40,33,37,35,44,46,39,31,39,50,41,39,23,36,49,36,31,46,44,30,44,37,45,38,35,33,33,34,35,46,31,33,49,38,29,42,45,25,34,44,41,26,43,56,37,34,31,32,42,41,33,42,45,37,29,35,35,48,42,36,40,47,32,24,35,40,34,44,45,36,26,39,37,39,38,37,35,36,33,39,31,35,34,35,48,34,31,43,35,35,35,43,43,34,38,32,41,32,25,20,41,39,40,29,28,44,41,45,29,34,47,45,48,39,33,39,47,48,45,37,38,41,34,47,46,49,44,51,26,41,31,32,38,42,35,43,42,44,29,26,23,47,35,35,43,35,32,43,23,27,35,44,28,26,40,45,24,34,38,23,42,16,37,39,42,40,34,39,37,36,32,20,47,27,32,31,35,32,42,29,31,25,40,38,43,21,31,27,36,27,32,48,31,39,49,36,23,36,39,27,26,30,36,30,27,24,21,36,39,33,25,38,40,39,22,36,31,48,35,34,32,43,35,46,38,37,38,18,44,23,37,41,37,40,21,30,28,23,40,33,36,41,25,44,38,36,23,46,39,25,27,32,25,21,36,27,48,17,37,28,34,19,39,17,36,29,29,42,24,36,33,38,45,30,33,37,33,35,22,43,21,26,38,36,36,31,22,26,27,32,43,33,39,21,36,23,41,41,25,44,31,24,31,44,21,33,32,33,30,41,37,35,42,18,42,47,32,30,24,48,33,30,31,27,32,62,32,35,34,47,23,41,31,49,36,16,35,15,28,23,38,42,27,39,35,38,21,36,35,20,34,35,29,36,40,46,41,45,36,41,33,39,33,35,34,38,27,24,34,39,29,43,31,36,31,47,31,28,31,49,39,35,42,37,39,43,24,38,30,32,25,31,39,28,26,24,37,33,37,27,32,52,37,31,33,23,36,33,37,35,35,40,42,31,42,32,34,25,40,44,42,40,38,36,40,37,41,41,31,41,38,39,40,34,33,31,50,44,38,36,27,39,41,33,30,28,50,37,50,54,24,22,52,38,26,46,38,59,27,45,38,32,36,17,38,30,34,42,31,42,37,39,38,28,44,39,37,37,31,35,45,42,37,33,28,40,52,40,35,29,38,46,28,33,42,25,39,26,33,35,51,38,31,51,35,35,40,46,36,46,41,35,32,42,48,38,47,32,47,39,40,25,41,33,47,36,40,43,54,41,41,34,38,43,56,34,38,34,41,47,39,32,48,36,35,47,39,44,50,44,28,35,29,50,25,48,23,31,48,46,44,38,37,35,47,51,29,29,43,50,49,41,34,37,41,35,51,27,19,30,43,36,38,41,32,29,23,23,31,48,34,33,36,42,21,40,41,28,40,42,28,20,32,48,24,37,49,28,34,33,24,41,45,43,29,32,29,34,25,29,41,39,29,41,26,30,33,26,27,31,36,37,41,29,37,34,40,43,43,24,28,47,18,30,47,28,52,30,31,26,36,55,23,38,49,51,35,30,42,33,36,32,34,44,28,40,36,27,40,47,37,46,51,34,30,32,38,51,36,44,30,40,41,27,39,34,32,33,34,19,40,32,37,40,39,48,39,29,18,41,44,36,45,22,51,34,33,30,29,35,29,36,37,22,30,46,29,33,35,24,29,39,26,33,36,30,27,34,54,17,38,31,32,32,36,33,51,37,39,28,15,20,39,39,41,31,30,32,33,29,39,45,36,36,42,37,40,23,39,40,30,25,44,41,31,34,29,37,40,37,44,30,37,31,32,43,40,20,24,30,38,37,46,45,33,40,31,25,42,42,33,31,27,40,27,41,42,41,41,26,35,43,39,35,32,40,37,34,31,27,37,43,39,30,29,33,49,35,29,33,33,33,38,30,27,30,21,40,30,33,35,33,36,27,45,21,49,34,27,28,37,24,38,39,50,42,27,41,23,22,46,34,27,25,31,37,41,42,47,37,41,33,41,32,34,43,46,37,39,24,49,34,33,41,45,17,40,34,33,37,41,32,34,43,34,37,43,47,33,39,35,33,34,49,42,28,46,38,43,28,49,42,32,39,33,36,33,35,37,39,30,34,48,45,29,39,38,36,39,38,36,26,30,27,35,23,34,35,44,38,41,27,40,30,42,35,23,43,26,52,32,39,43,31,48,26,27,45,60,46,30,42,32,33,37,39,35,40,33,39,32,53,40,40,35,31,40,43,41,24,37,30,31,37,35,20,41,38,44,36,47,35,41,45,38,33,41,33,23,28,38,34,41,47,30,31,44,44,30,39,36,40,40,17,40,49,59,46,32,33,42,33,56,47,36,37,35,53,48,46,45,53,57,38,44,36,45,38,35,40,48,51,36,34,42,31,25,39,43,43,52,38,32,25,13,34,45,25,32,27,39,48,36,31,35,29,42,38,16,35,48,47,26,47,28,30,28,32,31,40,28,33,34,36,40,32,20,28,35,31,40,29,26,40,30,38,27,37,43,32,56,37,40,19,48,51,42,20,43,33,44,37,29,40,42,37,37,40,25,32,31,44,46,42,31,20,34,34,42,50,37,39,33,37,49,40,28,43,37,40,33,33,36,29,42,47,39,30,34,49,24,46,34,19,38,41,41,47,26,50,27,36,55,30,33,38,30,29,24,30,39,28,39,43,32,33,45,30,28,42,23,38,37,41,19,27,39,22,25,22,22,36,28,34,30,37,27,42,28,19,36,28,25,27,26,38,34,24,38,27,25,41,31,28,34,23,25,19,40,29,39,39,35,36,37,33,33,37,31,31,52,45,17,34,33,37,40,37,45,37,43,41,12,46,20,43,50,38,29,24,15,39,25,48,18,24,38,40,37,13,27,40,34,35,39,26,33,32,30,31,37,28,36,14,37,38,20,43,29,40,31,38,27,30,29,41,36,27,33,32,43,33,28,49,41,40,33,32,40,41,38,30,27,31,29,32,36,48,56,22,25,29,29,45,41,35,27,42,43,24,47,42,27,45,33,49,29,39,43,25,41,19,36,37,29,34,41,47,27,45,36,35,46,47,32,51,42,42,37,30,42,50,49,36,50,43,41,39,46,31,38,32,29,32,27,33,35,33,53,37,38,36,32,24,26,46,39,34,35,34,25,48,39,50,32,28,45,35,47,34,36,36,38,48,42,34,40,46,33,14,43,36,38,36,34,47,48,43,28,42,40,35,30,39,41,36,36,48,35,47,36,27,35,35,37,50,49,21,30,38,44,43,46,46,41,43,35,13,39,31,38,35,36,33,41,39,41,24,40,46,38,37,43,48,39,44,50,44,45,38,43,30,28,47,53,50,37,41,24,38,44,35,45,44,44,35,42,33,38,37,49,28,41,35,35,48,35,23,43,49,36,36,34,31,30,37,35,25,54,43,29,42,38,34,42,25,36,36,24,38,30,39,31,31,36,32,35,46,38,34,40,38,33,32,31,35,33,31,48,36,31,47,52,36,33,19,44,33,40,31,32,43,43,25,25,37,36,49,38,46,30,30,45,54,32,47,35,28,45,30,46,48,43,45,30,28,44,35,46,52,39,14,31,40,28,45,49,51,39,22,41,34,42,26,34,41,30,47,25,41,32,24,39,37,41,36,36,37,36,44,36,27,35,31,27,31,37,47,29,35,44,32,33,18,37,37,37,25,46,20,24,32,25,37,46,29,37,27,31,28,49,32,29,22,33,36,28,31,31,33,29,6,31,32,48,24,30,15,28,39,31,37,26,32,38,27,22,36,27,34,35,38,32,28,32,31,29,31,41,37,32,31,22,30,34,32,32,40,50,35,40,36,28,31,33,34,32,38,52,34,40,30,27,42,28,41,32,31,21,27,22,27,37,25,25,38,23,25,41,40,28,29,33,34,28,24,35,27,38,44,37,18,36,39,29,32,47,37,48,36,32,20,41,36,27,34,32,30,42,39,18,41,42,44,27,40,32,36,40,35,36,42,38,21,34,30,47,38,34,32,42,36,37,43,33,31,39,44,25,39,29,31,34,41,36,44,53,33,47,47,29,48,44,18,45,43,34,40,25,36,47,41,36,35,46,38,36,35,41,41,41,41,39,40,36,46,43,28,32,47,29,35,28,38,30,36,44,33,37,24,37,39,40,25,41,27,41,44,30,40,36,35,42,38,46,46,39,42,24,36,35,33,37,27,36,36,31,33,27,38,41,34,39,38,45,36,23,36,26,31,38,42,38,47,31,34,43,35,42,35,27,27,39,31,42,42,40,43,41,32,42,27,31,42,38,37,31,28,36,45,43,47,48,39,35,32,33,40,39,39,25,53,43,37,42,43,39,32,38,34,36,41,40,41,40,41,38,40,42,41,41,45,36,39,36,36,41,30,47,36,37,36,34,42,47,37,38,49,39,39,30,33,42,40,29,43,42,26,34,52,34,26,36,44,42,23,34,35,20,43,31,25,26,29,28,37,43,35,29,35,32,34,46,28,34,44,39,28,41,34,47,45,28,13,37,36,61,29,16,41,43,35,22,40,42,31,33,35,40,44,36,47,39,31,38,40,36,37,38,28,46,38,46,38,46,34,34,46,39,37,43,29,22,45,48,40,39,38,26,40,46,47,32,29,22,51,35,35,38,28,41,43,28,38,20,37,44,47,45,44,37,34,23,32,33,40,35,26,39,34,8,24,22,19,30,32,36,27,46,41,35,28,34,19,40,24,22,29,31,35,30,41,22,27,36,27,34,22,28,33,25,29,27,31,23,32,27,40,30,29,25,21,45,30,28,31,22,37,34,30,24,17,33,35,41,33,27,42,32,33,38,42,23,27,23,12,34,48,42,43,22,36,24,45,33,27,43,27,49,40,20,35,49,38,29,36,29,36,33,47,32,16,39,32,34,33,43,29,33,31,50,36,30,19,19,29,29,40,38,36,38,34,24,45,29,49,31,42,37,25,38,34,13,33,32,29,38,36,31,45,48,36,29,37,39,34,35,37,39,39,37,33,37,49,45,37,28,17,34,26,37,30,39,41,41,36,26,38,36,41,44,49,33,50,51,57,34,41,44,43,51,35,44,40,22,45,44,38,49,40,49,38,36,24,22,30,33,43,49,38,39,41,40,32,54,33,34,37,42,36,38,46,35,45,43,39,33,37,33,47,35,50,47,42,26,36,35,34,35,41,35,32,34,30,24,41,43,43,37,30,43,38,42,59,34,41,43,34,45,34,40,32,38,33,24,35,40,38,39,31,28,32,36,33,40,47,39,40,38,35,40,39,28,34,27,31,44,42,28,33,52,40,39,41,42,42,38,33,44,30,34,45,44,36,20,42,30,27,31,45,37,46,36,43,44,32,32,26,46,38,44,28,42,29,31,27,36,47,43,39,32,40,36,46,44,28,37,41,33,29,27,39,36,28,31,42,33,28,43,34,48,53,31,25,50,37,25,31,43,30,47,41,37,34,32,50,37,34,33,29,28,43,39,32,47,43,38,27,28,38,38,27,38,36,35,24,38,51,49,28,24,28,40,38,40,46,31,31,31,33,39,45,39,37,34,37,49,24,46,36,50,22,44,38,40,40,44,44,47,47,39,45,50,49,43,44,40,47,31,33,44,46,48,53,51,39,38,23,40,40,33,42,40,35,44,46,33,31,37,32,38,30,45,35,37,41,54,43,46,36,34,38,45,36,35,30,46,35,34,41,23,33,43,28,21,26,37,46,31,28,37,21,33,41,28,21,56,21,34,30,38,32,38,46,37,40,37,39,42,37,27,41,36,29,39,47,25,37,30,23,46,24,34,36,49,39,39,39,37,34,49,34,45,43,25,34,38,37,38,40,33,32,39,34,42,33,14,34,33,30,25,32,36,31,56,38,39,29,29,37,44,48,30,23,30,27,37,34,39,34,28,30,25,27,33,41,23,39,41,29,36,40,24,44,43,47,22,15,39,35,30,36,24,43,44,39,36,22,44,47,32,47,27,24,34,44,33,33,35,34,28,36,36,39,34,27,47,41,32,25,41,42,37,45,43,35,34,42,54,30,27,29,43,37,33,42,45,47,29,32,38,31,43,31,45,32,31,36,40,37,34,44,34,35,22,29,40,40,33,40,30,23,33,31,43,34,48,48,44,36,35,32,45,47,50,24,26,47,36,24,26,33,47,38,38,38,29,43,34,34,34,41,39,30,18,44,25,33,39,44,53,40,29,42,26,40,46,20,38,21,29,48,29,43,43,26,43,39,37,35,54,39,42,42,40,52,42,41,32,53,45,38,33,35,49,36,33,12,31,35,30,28,41,36,40,39,40,42,36,37,32,35,32,39,49,51,47,38,37,46,34,36,32,51,37,39,34,34,35,45,24,43,40,43,41,35,45,40,60,43,41,40,22,5,40,40,46,42,24,33,47,46,32,46,43,42,34,41,22,52,18,52,23,46,35,24,39,43,39,45,32,38,40,34,38,29,44,46,36,41,42,28,41,46,25,28,47,15,37,35,39,37,45,44,47,49,30,38,40,33,32,46,32,32,44,43,34,37,33,31,48,35,40,29,40,25,46,37,50,42,30,39,34,35,39,28,39,42,43,38,49,47,55,52,40,49,41,39,36,48,37,42,39,44,43,40,34,35,38,46,47,47,38,36,43,41,47,43,41,36,39,55,31,47,34,21,32,34,37,29,26,44,43,36,43,33,57,49,37,27,41,28,25,27,34,35,22,23,36,31,37,19,35,21,39,39,26,35,38,37,38,26,44,33,31,20,30,31,35,35,27,42,38,41,32,29,35,41,47,33,23,22,28,33,44,41,34,26,36,21,25,39,40,28,31,20,42,19,37,34,41,29,37,33,35,39,33,41,32,27,32,37,41,35,36,56,40,42,29,30,27,40,42,45,56,31,24,33,52,34,27,38,27,34,33,32,32,31,36,34,36,34,31,31,32,45,42,27,41,22,25,35,26,43,43,26,41,30,40,39,38,37,33,33,34,15,36,35,30,31,33,31,32,16,26,29,35,35,25,34,31,29,20,23,43,31,40,34,24,44,52,39,32,17,32,34,39,21,28,36,46,39,31,38,42,26,30,32,32,34,45,28,38,34,33,22,38,42,32,35,34,47,38,24,33,31,43,41,38,41,35,35,47,48,38,38,37,29,40,31,44,38,37,35,32,38,52,40,34,24,32,19,44,39,38,25,35,48,48,41,44,24,35,29,23,37,21,29,52,47,31,34,38,35,33,33,40,34,30,42,37,38,41,28,50,42,33,43,42,27,36,49,30,40,37,34,35,40,27,49,43,44,35,50,42,28,34,36,41,21,33,38,26,35,31,38,42,45,53,33,38,33,48,45,41,30,36,24,38,39,42,38,41,39,29,37,36,49,37,40,41,34,43,44,49,32,44,46,41,44,18,32,48,34,27,26,37,46,46,30,31,20,29,14,30,34,41,42,45,35,39,39,27,27,36,33,32,32,36,25,52,40,37,29,40,26,36,44,29,35,37,37,21,25,23,27,31,31,20,45,55,33,30,34,37,39,41,37,39,41,33,40,33,36,49,42,42,28,26,42,46,31,26,36,44,32,42,58,43,42,31,28,39,27,37,44,49,40,45,43,54,42,38,43,43,44,27,31,45,47,39,53,33,39,21,37,50,53,49,43,43,27,35,37,49,34,42,37,41,40,41,46,32,36,41,30,34,38,36,43,26,49,45,54,28,19,20,34,34,36,44,41,45,30,29,36,20,41,29,37,38,30,23,36,24,21,34,15,43,17,41,35,28,29,42,28,20,30,41,23,30,35,30,33,39,38,44,32,28,30,40,42,38,34,38,37,31,24,31,38,42,35,32,20,29,24,39,35,40,30,39,46,39,25,28,35,40,37,33,35,38,39,37,40,37,33,25,12,49,39,28,25,45,28,37,23,25,34,23,28,39,35,45,43,37,27,31,16,36,27,33,39,24,39,40,41,26,40,13,36,41,46,29,37,49,46,31,34,27,35,33,32,40,32,25,39,20,43,27,28,29,33,29,33,31,41,21,34,35,20,47,31,40,37,30,32,29,49,42,33,32,27,31,41,44,31,37,23,42,27,34,48,26,45,36,47,42,46,39,36,39,23,31,33,45,35,31,44,46,30,31,36,37,44,33,33,33,30,31,39,33,38,53,43,52,29,45,25,51,42,37,31,22,39,42,22,35,25,39,36,35,40,40,40,36,21,32,38,31,25,18,39,36,31,34,32,35,34,33,38,35,47,26,36,18,23,31,48,31,30,34,9,27,19,35,32,46,45,15,40,43,33,49,39,47,43,25,32,35,28,41,34,36,24,40,41,41,35,22,32,31,24,43,39,43,36,43,32,34,47,31,36,45,37,34,32,43,45,42,19,40,45,50,37,36,51,31,50,39,37,33,22,50,33,45,41,32,34,31,39,43,46,18,49,26,40,32,39,28,26,35,41,29,33,45,32,32,36,47,34,28,37,31,40,29,48,46,28,53,45,26,44,41,45,34,48,28,16,30,53,42,35,40,17,38,37,29,33,42,38,33,31,49,34,51,25,30,39,40,41,41,46,41,26,36,33,41,37,43,36,30,40,36,43,47,34,39,42,24,25,30,23,45,38,25,39,35,46,42,42,40,54,41,37,31,36,47,50,21,34,30,34,38,36,36,42,44,36,37,32,28,40,48,37,37,29,26,47,29,42,40,26,31,25,34,30,49,35,18,45,39,35,44,40,30,47,41,41,33,39,53,31,42,34,33,34,48,42,40,24,40,44,30,41,33,17,31,19,33,33,50,35,33,29,39,30,32,31,33,38,29,21,28,51,32,30,33,29,33,32,46,31,29,23,29,53,29,40,25,41,34,27,34,31,38,32,40,21,40,38,37,44,42,47,47,35,42,32,31,41,46,48,43,38,33,36,27,48,41,41,34,40,28,21,38,36,29,29,39,37,27,41,23,33,42,31,40,25,33,32,15,40,35,48,30,29,29,40,41,30,31,19,46,35,36,39,39,34,28,20,33,20,39,42,33,31,36,22,38,39,39,22,31,41,31,35,44,43,33,30,26,39,35,28,35,48,48,28,22,27,33,36,29,27,28,25,40,32,36,42,32,20,42,29,45,33,51,40,41,35,42,53,38,32,31,30,35,38,48,41,23,30,40,56,38,31,43,29,26,34,25,34,47,43,34,37,39,48,39,42,36,34,34,37,25,35,36,19,36,30,41,32,35,12,38,23,34,33,22,27,37,36,34,19,38,38,39,44,47,31,32,28,37,31,33,42,12,32,40,30,40,36,19,41,47,32,24,41,40,34,41,37,35,41,46,33,48,44,43,24,34,31,30,38,33,45,28,43,42,29,38,46,32,53,42,47,26,31,32,35,43,44,43,46,47,43,24,45,44,48,44,34,39,44,33,55,30,44,31,45,41,45,36,43,50,39,29,19,39,23,43,33,32,25,35,45,24,28,35,40,30,25,23,32,34,37,38,33,40,34,24,42,38,38,34,42,44,35,36,40,44,33,41,36,27,32,48,52,34,44,43,38,41,34,32,27,47,39,33,43,9,31,38,39,48,34,44,36,33,37,26,34,42,24,35,41,40,33,21,33,37,35,44,37,42,55,34,52,37,32,46,40,43,38,41,38,39,41,40,38,24,40,34,48,33,35,40,41,34,19,45,45,48,48,49,35,46,31,26,33,53,35,41,34,44,35,34,41,37,31,46,44,29,33,46,41,36,30,35,36,42,35,33,39,36,41,34,38,45,36,29,38,36,36,42,26,27,13,35,39,32,46,46,29,40,21,17,31,39,38,35,28,41,34,36,31,28,38,34,27,35,47,39,37,38,33,43,25,48,31,39,34,41,32,36,37,40,47,18,37,27,48,38,47,35,35,38,38,31,37,37,29,34,38,38,35,49,38,32,52,31,26,25,39,33,39,35,24,32,31,33,35,39,30,44,30,30,39,37,43,41,31,27,35,35,35,32,20,32,21,25,16,38,18,22,41,39,40,38,32,35,30,31,26,29,47,30,35,36,16,34,28,23,36,35,23,42,34,25,11,38,37,30,42,25,34,32,27,52,30,31,33,25,44,24,40,32,27,46,41,40,43,23,35,31,28,33,34,29,39,34,32,34,33,41,32,35,20,44,38,34,39,39,40,33,27,35,41,35,40,23,35,37,36,26,33,39,41,41,35,33,30,23,25,39,30,24,30,20,26,32,29,43,27,32,34,32,42,19,0,25,43,40,38,34,28,31,41,22,31,35,31,57,48,31,39,40,45,37,33,42,27,36,41,28,27,33,21,27,35,32,32,44,41,36,36,31,36,29,35,46,43,41,37,42,53,51,44,31,45,30,33,43,38,23,51,44,24,39,28,35,36,42,45,34,45,40,34,38,34,49,41,34,42,42,46,38,44,55,43,40,38,43,46,35,37,36,17,38,33,35,35,30,25,34,35,42,39,42,39,41,25,48,33,34,40,42,37,34,36,26,31,48,39,35,34,25,18,39,43,38,27,30,39,47,43,11,50,32,31,44,26,45,29,30,42,26,39,42,27,34,41,41,33,51,33,31,44,36,36,40,31,43,46,27,29,40,45,45,40,34,28,34,34,31,44,42,29,28,38,40,44,47,31,32,29,37,42,33,47,40,27,43,47,45,50,35,39,37,48,41,52,38,42,43,36,41,46,42,21,32,41,33,32,38,31,39,30,31,43,31,16,39,50,38,49,32,27,40,41,32,51,41,48,39,35,39,28,34,26,26,45,36,40,37,48,50,35,28,35,27,31,35,45,25,25,32,56,16,33,28,20,30,46,20,39,34,23,23,34,26,26,30,31,36,44,30,28,35,43,48,40,34,18,34,30,34,41,36,28,47,29,40,50,33,46,25,44,35,18,27,43,44,36,45,40,25,45,48,49,33,31,48,46,37,51,21,40,41,34,28,49,40,42,40,40,36,27,27,28,34,33,35,25,23,42,30,29,21,23,34,36,32,28,20,29,39,36,23,30,25,33,27,41,30,46,35,38,48,51,25,31,33,37,40,31,35,27,29,24,28,34,36,21,25,24,21,18,47,29,23,30,37,38,33,40,41,38,32,36,28,40,38,31,34,37,29,27,37,26,30,36,36,29,46,36,30,42,36,38,43,32,47,31,34,28,38,45,32,45,31,42,40,40,28,39,32,45,20,38,34,32,36,20,29,44,37,31,36,36,27,32,33,36,22,29,21,42,28,27,27,27,18,35,28,34,34,39,38,34,41,35,40,37,29,30,26,36,33,20,40,22,35,35,30,31,36,38,45,30,40,41,24,40,24,23,39,42,39,20,46,56,47,49,35,29,31,35,34,26,27,42,34,51,43,41,42,24,29,39,26,34,39,41,44,41,43,51,28,32,41,41,39,36,47,46,42,39,35,47,34,32,43,47,40,45,49,53,43,36,30,22,38,39,24,27,44,41,43,52,50,21,31,29,56,26,40,33,41,46,31,40,24,31,45,22,37,42,24,22,38,38,30,41,37,33,26,38,28,36,35,27,40,47,39,42,34,32,39,39,39,29,38,41,37,32,40,32,40,32,39,18,45,38,34,38,35,33,39,20,29,42,39,40,28,32,51,52,27,34,32,41,37,47,41,34,37,32,52,29,21,42,44,49,37,38,50,38,33,43,47,51,42,42,44,36,32,32,50,41,47,41,36,42,28,40,42,32,38,43,41,37,42,38,34,25,42,45,38,32,30,36,41,26,18,28,40,31,38,47,30,12,31,45,43,41,39,28,26,42,38,41,43,36,58,29,38,40,39,40,31,32,36,33,35,42,44,30,41,17,44,19,37,35,37,42,28,37,35,35,37,26,39,34,37,25,40,45,31,31,32,36,44,39,39,41,36,25,30,29,41,33,41,43,29,44,34,26,34,39,37,21,40,39,34,43,47,38,39,43,31,33,33,37,41,37,40,41,29,33,45,40,41,30,49,31,29,21,38,32,27,23,21,41,30,31,31,21,41,45,40,27,34,37,31,38,30,46,36,30,22,30,21,44,42,28,48,49,23,43,29,43,34,33,33,28,23,32,29,35,36,10,23,31,43,30,33,31,35,35,28,31,18,26,46,40,38,34,42,41,40,38,25,20,37,24,34,34,29,32,23,28,47,35,32,28,21,45,37,40,37,24,47,29,44,39,33,27,23,34,49,23,43,29,47,45,20,46,36,39,40,17,36,37,27,50,31,32,27,24,35,24,25,31,17,46,38,38,33,18,28,29,38,28,29,31,31,38,39,29,27,20,20,23,42,29,44,34,41,36,34,44,30,36,35,46,34,33,31,40,36,26,36,18,33,41,23,18,45,30,30,33,33,46,25,33,46,30,38,40,30,22,47,37,29,29,33,38,30,24,42,41,38,40,41,48,42,40,29,39,37,41,38,47,31,29,49,51,41,39,35,38,30,44,34,29,30,39,37,38,28,46,41,29,37,48,39,43,39,46,35,30,45,39,25,29,24,34,43,33,38,30,40,25,27,34,34,44,40,40,50,40,40,31,22,35,40,42,25,25,44,45,22,41,20,28,34,34,43,33,40,47,26,27,35,35,38,28,29,38,48,39,36,37,32,37,40,32,49,38,19,47,36,47,36,42,31,41,40,46,45,19,23,34,33,36,37,60,37,41,46,44,42,50,47,43,42,26,57,48,43,47,39,45,43,42,48,41,45,36,34,36,43,29,32,42,40,50,37,34,49,31,27,27,51,47,44,47,24,51,34,40,35,35,36,22,25,41,30,38,47,38,29,32,37,30,35,40,41,38,29,29,41,30,24,41,37,22,29,28,26,24,29,33,38,38,34,31,43,35,24,37,38,30,24,40,29,27,30,24,36,33,30,42,24,50,38,31,28,25,32,27,42,27,22,31,37,28,44,34,36,33,48,43,28,29,43,28,31,19,47,45,33,40,50,40,31,21,32,36,34,38,30,28,35,36,28,29,34,55,38,51,35,22,33,20,32,40,38,30,37,41,32,49,24,33,41,41,32,35,27,35,15,35,34,31,37,33,26,31,23,35,28,26,46,30,19,47,29,28,40,36,19,39,30,46,28,37,23,7,27,36,31,40,49,33,27,37,32,29,29,20,32,47,38,31,36,41,28,38,25,26,28,32,34,18,22,15,33,42,43,32,27,49,38,23,33,40,44,40,34,33,39,32,42,22,33,45,38,16,29,34,36,33,23,34,31,27,47,27,32,31,19,32,41,22,34,22,50,36,33,35,30,47,15,32,28,22,28,31,25,32,28,30,27,35,25,21,32,36,5,40,34,29,37,33,45,38,22,37,37,30,43,36,37,27,32,34,22,32,39,32,36,36,31,43,47,29,31,38,32,37,44,42,43,26,37,24,34,42,45,34,34,37,46,49,32,29,20,41,39,34,42,39,29,42,36,36,46,37,36,44,39,27,41,31,34,47,28,42,31,27,40,27,30,42,39,41,26,35,38,33,33,45,35,39,51,35,31,33,43,43,39,40,25,42,30,43,29,23,39,32,41,34,30,39,15,46,48,25,46,21,29,36,31,43,39,37,39,40,18,23,32,34,45,40,44,29,36,35,31,36,34,38,36,33,32,42,40,47,19,34,40,34,33,27,40,38,40,32,45,46,60,42,39,41,41,35,51,30,41,45,42,28,56,47,42,29,29,44,36,41,37,43,39,44,53,51,38,33,44,43,42,25,36,43,34,42,42,39,34,39,32,47,39,41,37,33,35,25,34,30,35,39,28,41,27,48,34,35,40,43,41,48,23,26,28,38,31,49,41,43,33,33,28,38,39,35,33,22,49,43,30,33,38,36,36,38,40,21,33,40,37,47,24,33,46,29,20,39,40,39,33,36,50,28,28,30,38,31,27,33,39,32,40,36,32,24,41,41,50,35,34,42,35,31,29,57,30,43,40,44,23,36,49,48,41,33,51,31,32,49,41,27,30,27,35,41,36,40,31,33,34,35,33,38,29,35,41,42,51,34,37,22,43,37,29,35,28,48,34,42,28,23,46,38,38,35,32,38,33,41,35,46,32,40,28,36,30,36,26,15,35,46,44,37,35,32,43,22,29,40,21,44,20,44,34,19,41,48,38,31,26,31,33,35,35,39,30,19,31,17,33,25,18,47,42,42,47,29,33,25,35,27,37,37,31,21,34,41,34,36,34,33,27,28,34,49,38,19,43,33,20,28,34,23,34,27,27,34,27,34,30,37,27,35,23,25,29,35,35,27,48,35,22,24,40,34,23,22,23,30,32,45,35,22,35,27,17,34,38,28,22,35,17,31,31,27,17,33,27,29,28,19,38,36,34,34,39,31,34,36,45,33,29,38,29,37,43,10,40,29,28,44,41,27,20,40,25,45,40,27,39,33,29,23,24,45,49,36,39,33,31,43,39,33,23,30,33,34,41,44,41,48,41,45,38,33,41,32,37,35,38,36,39,35,41,39,31,32,43,24,38,29,34,37,34,41,38,38,22,41,43,43,48,25,33,26,47,21,41,43,32,39,7,40,29,38,37,36,28,42,25,29,22,30,39,37,49,29,12,36,29,25,22,34,46,32,30,40,41,32,39,28,43,25,33,35,23,30,39,25,48,45,30,36,36,40,38,36,39,33,39,41,42,37,35,30,32,32,45,35,29,40,41,32,40,33,27,27,50,22,29,40,42,45,49,42,43,39,50,32,48,26,45,50,41,25,31,39,31,33,39,44,35,44,30,49,23,43,37,34,32,45,39,31,47,46,23,35,55,48,24,34,31,47,22,39,20,35,40,27,50,44,28,35,27,36,42,41,37,32,26,28,30,39,32,40,39,46,12,42,38,46,32,29,38,22,27,36,23,35,30,27,42,29,30,33,24,37,39,25,44,30,32,43,34,44,36,31,41,52,21,45,27,29,38,50,41,50,38,45,38,31,34,32,35,34,26,38,37,27,33,40,33,31,34,45,45,25,39,23,33,27,39,35,40,41,40,39,22,35,22,40,38,34,40,30,38,31,35,39,53,45,19,22,32,40,25,37,37,30,39,36,30,29,47,35,27,25,34,33,37,48,27,33,35,30,23,29,42,41,34,36,26,35,40,25,29,28,19,40,19,26,41,28,38,37,20,46,30,36,12,37,26,24,42,30,38,30,30,31,19,31,31,37,25,18,23,38,34,26,36,18,38,38,36,24,42,41,21,44,34,30,9,32,35,19,39,30,35,31,10,39,18,25,35,23,29,29,23,30,35,16,40,40,37,29,52,32,34,17,21,29,48,21,29,13,21,33,27,27,18,27,27,34,27,26,32,25,17,21,19,29,38,16,20,39,24,31,30,20,32,46,36,40,25,33,33,28,30,31,29,51,22,39,48,26,34,19,19,47,39,37,38,30,38,36,39,20,22,41,41,36,41,43,45,37,22,36,37,40,36,32,45,40,45,28,39,37,39,52,40,34,36,44,37,30,36,39,40,35,31,25,38,37,29,33,48,39,35,40,32,39,33,42,22,40,37,33,39,42,47,30,24,43,45,52,39,34,29,43,27,36,19,31,39,31,47,39,35,30,22,27,34,38,43,31,31,35,16,26,35,25,49,26,40,36,31,33,24,42,31,31,42,43,35,25,25,22,37,35,32,37,62,48,37,30,31,30,34,37,39,39,21,44,52,37,49,33,33,32,39,42,50,40,42,42,28,41,31,36,37,32,43,41,33,34,50,33,50,26,30,45,49,35,36,33,38,39,36,35,39,46,42,47,38,41,33,37,33,35,50,37,62,34,28,36,34,45,46,43,34,50,34,39,30,25,41,29,23,24,36,40,26,39,34,29,42,38,34,47,25,30,32,35,40,40,40,34,28,33,32,36,36,28,34,38,22,39,28,32,32,38,36,35,38,45,37,35,49,28,32,30,36,33,27,30,37,40,51,48,33,20,40,40,38,28,39,26,37,11,46,51,39,42,34,42,29,33,38,43,42,38,45,29,38,35,30,46,38,43,28,39,32,30,36,33,28,36,43,43,31,45,44,44,38,46,21,20,38,21,25,21,27,31,32,49,48,39,33,36,35,40,31,24,34,39,31,35,33,37,30,36,24,41,33,30,44,34,38,27,23,40,25,29,32,32,14,40,30,26,7,31,40,32,30,34,31,37,20,48,32,27,36,37,36,34,28,30,41,29,32,29,29,16,43,33,38,31,38,38,45,19,40,28,29,44,41,38,25,19,36,32,37,28,36,46,34,31,18,21,19,24,21,24,33,19,40,34,30,39,11,35,17,35,30,23,39,27,22,28,40,38,21,30,36,44,29,39,12,16,30,26,36,24,29,24,30,29,28,18,42,21,25,24,18,42,22,31,40,38,34,35,29,23,33,37,32,23,30,43,25,42,29,28,34,22,31,34,43,43,34,40,33,38,31,29,32,33,40,38,33,42,39,42,30,33,42,41,39,29,28,30,23,20,49,37,49,39,42,27,25,25,38,36,40,30,37,47,41,39,38,37,44,34,38,31,37,45,36,32,37,42,48,38,44,23,39,36,36,36,12,46,41,29,30,34,20,35,19,28,38,45,28,31,31,34,28,30,27,36,31,30,45,36,40,30,27,43,29,36,50,51,18,30,29,41,31,32,34,21,28,52,30,33,31,27,37,33,38,33,46,39,25,36,39,35,30,34,34,34,32,33,37,41,40,46,27,15,27,35,45,51,45,30,33,39,35,40,40,41,44,32,31,39,33,33,46,21,44,25,48,30,44,40,31,46,27,32,40,46,43,49,31,36,24,45,31,29,42,31,52,32,25,20,39,34,31,40,36,38,34,46,24,36,39,21,38,38,32,29,29,39,23,47,35,32,28,37,40,53,39,35,43,36,31,30,28,41,32,19,33,18,34,44,24,28,40,30,41,18,16,50,52,20,34,36,30,28,47,28,44,37,35,28,44,46,41,48,43,41,40,43,39,31,31,22,35,34,34,43,40,39,38,39,37,41,56,38,34,42,42,38,38,18,32,47,32,38,28,39,28,41,25,51,38,30,50,29,40,43,48,39,38,28,24,37,39,22,37,27,32,47,31,28,31,20,35,33,34,28,27,40,42,38,44,24,46,35,22,24,35,33,35,29,37,34,40,29,35,20,32,22,27,24,46,30,28,38,31,30,28,10,29,28,36,18,24,30,39,28,32,31,33,40,39,27,31,40,29,34,37,25,27,44,48,31,38,26,36,13,38,33,29,34,33,29,12,28,41,40,30,25,45,41,32,18,37,31,41,41,27,25,24,43,32,30,37,34,44,33,33,35,31,34,33,22,18,15,33,39,23,31,19,36,25,37,28,20,32,31,21,27,29,17,35,29,29,31,34,33,23,35,18,30,24,28,47,36,25,40,33,29,34,39,29,24,31,44,29,39,37,23,39,30,30,43,42,34,32,34,27,32,31,44,40,43,20,35,46,37,59,33,38,32,37,24,29,32,40,24,38,25,44,43,52,41,38,38,41,37,43,31,31,13,34,28,44,27,30,47,33,29,35,36,38,38,21,45,33,28,25,29,28,33,40,26,49,18,15,23,47,26,40,21,36,47,25,39,26,26,36,31,34,25,32,34,44,36,21,11,23,31,33,23,33,30,21,41,36,31,31,36,30,25,33,37,37,36,24,42,36,33,21,40,34,36,40,37,37,47,34,43,19,34,36,31,34,35,35,41,54,40,45,45,30,28,46,35,32,48,40,38,48,39,43,36,46,38,36,45,28,34,47,37,30,15,32,40,46,36,22,37,19,28,35,34,36,32,33,38,37,37,38,31,30,35,46,46,56,37,34,31,49,34,27,33,30,39,50,41,11,32,38,36,26,31,18,33,40,38,39,32,50,39,28,34,24,38,38,31,40,50,32,44,39,37,31,41,38,27,22,50,35,28,37,22,33,29,33,39,44,49,22,40,29,41,44,37,40,43,34,37,39,45,36,44,40,45,42,45,41,36,48,42,28,27,44,40,28,57,25,34,30,38,32,36,36,36,37,45,31,37,32,43,31,23,31,36,37,39,36,29,32,31,39,48,20,43,38,54,45,27,31,34,47,44,33,25,40,35,25,20,25,41,30,30,33,30,33,36,34,35,29,47,39,30,35,39,44,42,33,15,33,41,21,28,26,31,38,23,22,28,36,37,27,33,45,37,38,29,35,31,46,43,35,39,34,19,38,40,41,39,28,34,31,39,48,28,30,15,27,33,37,24,47,16,25,34,46,40,33,39,39,34,29,6,37,27,35,29,40,40,34,28,32,32,44,39,39,31,27,27,25,44,36,32,34,30,37,33,12,32,31,24,14,30,40,32,32,29,40,41,24,28,38,38,29,25,23,38,25,31,27,30,30,26,45,40,31,29,27,17,29,33,44,34,38,47,24,37,44,27,36,30,31,40,22,24,34,28,43,29,24,35,36,38,28,45,24,44,36,35,34,44,28,30,37,37,48,39,31,17,21,31,43,41,33,24,35,32,30,38,32,36,31,30,29,33,43,36,27,25,30,42,49,43,21,36,38,30,28,37,38,26,30,29,24,23,36,33,24,55,37,36,41,34,27,24,52,39,27,37,37,39,36,30,24,26,38,32,40,38,33,22,23,39,31,35,30,29,28,26,24,40,16,30,37,28,35,34,38,32,31,33,45,33,27,39,31,33,38,25,44,26,33,27,49,42,45,26,35,43,47,33,36,37,42,40,32,47,28,40,35,34,27,50,29,46,27,22,39,23,33,51,35,48,46,44,25,36,41,32,28,37,34,54,37,35,17,39,36,37,30,36,41,36,46,33,28,45,41,34,37,33,34,35,33,47,29,30,50,31,31,38,26,40,30,23,40,45,38,35,23,42,32,29,32,36,42,31,35,21,34,28,34,51,40,32,43,45,34,45,45,50,36,33,26,32,32,48,20,34,35,19,30,30,24,30,49,30,16,19,24,30,40,42,43,32,46,34,40,36,38,37,32,19,45,41,42,41,40,24,47,27,41,47,33,37,42,44,30,25,46,42,44,44,35,31,32,39,29,30,33,50,43,29,38,35,30,36,36,28,44,43,23,44,41,27,27,37,25,37,41,31,35,42,31,31,19,51,33,32,30,34,34,41,34,30,18,24,46,21,39,33,31,28,34,33,29,26,52,33,29,27,36,28,50,32,30,23,33,39,30,35,34,19,32,30,40,22,44,25,18,36,38,39,37,28,19,36,42,29,34,51,51,33,34,15,29,38,48,36,25,34,37,23,31,27,35,28,32,34,30,30,36,41,43,24,43,39,39,33,29,49,39,33,35,14,43,29,34,38,39,29,29,27,27,28,40,42,38,34,18,24,42,37,26,29,32,37,30,44,35,35,33,32,40,41,37,26,36,32,39,32,29,28,33,21,17,43,24,14,39,25,20,29,32,18,31,33,45,22,29,40,28,31,37,30,30,35,34,40,33,32,22,38,29,36,37,32,37,42,39,31,42,40,35,39,36,23,34,29,31,41,24,32,35,36,31,30,42,33,50,35,20,22,48,38,32,29,30,37,31,25,23,35,32,24,32,29,31,40,26,44,35,36,29,40,27,40,26,41,21,30,33,32,40,21,26,28,22,40,34,45,32,16,35,31,25,20,33,26,30,39,26,38,31,30,28,27,29,33,11,28,44,43,25,40,39,42,33,41,37,29,41,42,36,50,27,33,46,33,30,37,43,38,44,39,34,40,25,49,42,34,39,36,25,43,42,38,42,29,41,41,29,42,34,50,39,27,32,39,39,32,32,30,30,37,31,45,36,24,42,34,32,27,37,32,38,35,21,19,38,51,35,18,42,35,37,41,37,36,36,31,36,28,31,40,45,38,37,38,34,46,39,32,33,32,32,32,35,25,39,43,33,13,39,30,41,22,26,31,24,48,39,30,37,38,37,39,35,42,48,31,37,32,38,50,35,28,41,25,45,45,45,38,43,36,38,34,36,41,38,40,45,28,35,42,48,39,46,44,40,33,35,36,38,29,43,39,42,35,36,40,45,44,48,47,28,23,35,32,28,32,33,36,33,34,23,39,32,22,33,24,37,45,45,53,43,47,34,27,46,44,38,41,47,24,27,31,58,41,31,29,37,35,31,38,35,42,36,32,36,38,15,25,32,37,44,46,29,23,27,40,31,40,19,30,57,40,42,45,36,47,32,35,38,14,39,30,28,33,38,16,44,16,38,43,42,45,36,25,42,27,36,34,38,36,22,31,47,34,36,25,27,19,30,38,35,34,24,37,35,23,37,35,41,44,35,36,38,25,44,29,37,32,43,26,27,27,25,26,27,29,25,25,26,31,33,34,25,31,16,26,28,35,35,24,30,35,27,24,36,25,13,29,20,35,28,43,34,24,24,33,38,37,4,48,20,21,40,27,22,27,33,35,39,36,36,26,42,35,23,36,35,35,29,20,23,30,25,48,36,20,36,28,21,27,23,35,37,41,32,45,34,33,35,31,37,44,38,31,38,37,36,31,34,31,42,22,40,27,30,31,28,36,33,33,34,42,37,31,20,36,32,35,36,36,43,41,29,24,30,32,20,18,24,27,33,33,27,32,46,18,34,45,27,31,46,35,46,36,28,28,47,27,25,31,28,36,41,42,22,31,35,29,31,30,27,33,30,40,49,21,16,23,23,39,38,45,28,22,35,27,26,33,30,36,39,31,33,32,19,50,28,33,38,20,44,25,28,36,39,38,36,34,38,32,42,29,47,40,47,41,45,44,46,44,32,15,24,32,45,21,26,30,44,27,41,49,32,55,42,33,34,23,42,37,40,34,38,33,23,19,26,48,33,34,27,29,28,28,24,28,26,32,37,32,23,25,47,42,39,37,25,27,49,23,29,41,28,31,41,43,35,38,43,34,35,30,29,36,31,29,26,47,30,31,25,33,27,37,36,31,48,43,26,35,34,33,28,33,34,39,44,49,29,30,42,30,38,39,30,39,50,45,41,48,34,42,35,35,35,39,38,32,48,34,53,42,27,30,37,35,41,39,18,46,43,46,46,45,43,33,36,36,38,30,39,39,48,32,45,38,26,32,25,41,30,25,27,25,40,29,35,38,46,42,31,37,34,37,47,27,44,33,25,29,44,31,22,39,22,45,35,36,36,31,36,37,41,24,18,35,27,39,42,35,36,36,32,33,30,32,35,34,34,35,39,39,26,42,32,39,35,11,31,40,35,41,40,32,31,45,42,44,44,47,40,39,37,33,36,41,40,36,38,31,32,47,49,44,28,34,31,33,46,34,36,36,31,32,38,39,44,36,41,30,39,37,42,45,45,28,43,44,38,47,26,51,44,39,34,26,43,50,42,38,40,33,38,42,48,41,43,43,47,28,31,35,52,43,29,41,38,41,40,37,47,32,32,36,39,43,41,39,37,38,42,29,28,14,34,49,32,37,40,41,42};
