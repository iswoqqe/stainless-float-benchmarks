; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!933 () Bool)

(assert start!933)

(declare-fun b!4366 () Bool)

(declare-fun res!3404 () Bool)

(declare-fun e!2087 () Bool)

(assert (=> b!4366 (=> (not res!3404) (not e!2087))))

(declare-datatypes ((array!264 0))(
  ( (array!265 (arr!115 (Array (_ BitVec 32) (_ BitVec 32))) (size!115 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!264)

(declare-fun i!252 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4366 (= res!3404 (QInt!0 (select (arr!115 iq!165) i!252)))))

(declare-datatypes ((array!266 0))(
  ( (array!267 (arr!116 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!116 (_ BitVec 32))) )
))
(declare-fun q!85 () array!266)

(declare-datatypes ((Unit!337 0))(
  ( (Unit!338) )
))
(declare-datatypes ((tuple4!154 0))(
  ( (tuple4!155 (_1!132 Unit!337) (_2!132 array!264) (_3!120 (_ BitVec 32)) (_4!77 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2088 () tuple4!154)

(declare-fun lt!2716 () (_ FloatingPoint 11 53))

(declare-fun lt!2714 () array!264)

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun b!4367 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!266 array!264 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!154)

(assert (=> b!4367 (= e!2088 (computeModuloWhile!0 jz!53 q!85 lt!2714 jz!53 lt!2716))))

(declare-fun b!4368 () Bool)

(assert (=> b!4368 (= e!2087 (or (bvslt i!252 #b00000000000000000000000000000000) (bvsge i!252 (size!115 iq!165))))))

(declare-fun b!4369 () Bool)

(declare-fun e!2085 () Bool)

(assert (=> b!4369 (= e!2085 e!2087)))

(declare-fun res!3406 () Bool)

(assert (=> b!4369 (=> (not res!3406) (not e!2087))))

(declare-fun lt!2713 () (_ FloatingPoint 11 53))

(declare-fun lt!2715 () tuple4!154)

(assert (=> b!4369 (= res!3406 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2713) (fp.lt lt!2713 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!115 (_2!132 lt!2715)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4369 (= lt!2713 (fp.sub roundNearestTiesToEven (_4!77 lt!2715) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!77 lt!2715) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!77 lt!2715) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!77 lt!2715) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!77 lt!2715) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4369 (= lt!2715 e!2088)))

(declare-fun c!689 () Bool)

(assert (=> b!4369 (= c!689 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4369 (= lt!2716 (select (arr!116 q!85) jz!53))))

(assert (=> b!4369 (= lt!2714 (array!265 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4370 () Bool)

(declare-fun res!3401 () Bool)

(assert (=> b!4370 (=> (not res!3401) (not e!2085))))

(declare-fun qInv!0 (array!266) Bool)

(assert (=> b!4370 (= res!3401 (qInv!0 q!85))))

(declare-fun b!4371 () Bool)

(declare-fun res!3403 () Bool)

(assert (=> b!4371 (=> (not res!3403) (not e!2087))))

(declare-fun iqInv!0 (array!264) Bool)

(assert (=> b!4371 (= res!3403 (iqInv!0 iq!165))))

(declare-fun b!4372 () Bool)

(declare-fun Unit!339 () Unit!337)

(assert (=> b!4372 (= e!2088 (tuple4!155 Unit!339 lt!2714 jz!53 lt!2716))))

(declare-fun res!3402 () Bool)

(assert (=> start!933 (=> (not res!3402) (not e!2085))))

(assert (=> start!933 (= res!3402 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!933 e!2085))

(assert (=> start!933 true))

(declare-fun array_inv!65 (array!264) Bool)

(assert (=> start!933 (array_inv!65 iq!165)))

(declare-fun array_inv!66 (array!266) Bool)

(assert (=> start!933 (array_inv!66 q!85)))

(declare-fun b!4373 () Bool)

(declare-fun res!3405 () Bool)

(assert (=> b!4373 (=> (not res!3405) (not e!2087))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4373 (= res!3405 (and (bvsge (select (arr!115 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!933 res!3402) b!4370))

(assert (= (and b!4370 res!3401) b!4369))

(assert (= (and b!4369 c!689) b!4367))

(assert (= (and b!4369 (not c!689)) b!4372))

(assert (= (and b!4369 res!3406) b!4371))

(assert (= (and b!4371 res!3403) b!4373))

(assert (= (and b!4373 res!3405) b!4366))

(assert (= (and b!4366 res!3404) b!4368))

(declare-fun m!7121 () Bool)

(assert (=> b!4373 m!7121))

(declare-fun m!7123 () Bool)

(assert (=> b!4367 m!7123))

(declare-fun m!7125 () Bool)

(assert (=> start!933 m!7125))

(declare-fun m!7127 () Bool)

(assert (=> start!933 m!7127))

(declare-fun m!7129 () Bool)

(assert (=> b!4370 m!7129))

(declare-fun m!7131 () Bool)

(assert (=> b!4366 m!7131))

(assert (=> b!4366 m!7131))

(declare-fun m!7133 () Bool)

(assert (=> b!4366 m!7133))

(declare-fun m!7135 () Bool)

(assert (=> b!4369 m!7135))

(declare-fun m!7137 () Bool)

(assert (=> b!4369 m!7137))

(declare-fun m!7139 () Bool)

(assert (=> b!4371 m!7139))

(push 1)

(assert (not b!4366))

(assert (not b!4371))

(assert (not b!4370))

(assert (not b!4367))

(assert (not start!933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2979 () Bool)

(declare-fun res!3409 () Bool)

(declare-fun e!2092 () Bool)

(assert (=> d!2979 (=> (not res!3409) (not e!2092))))

(assert (=> d!2979 (= res!3409 (= (size!116 q!85) #b00000000000000000000000000010100))))

(assert (=> d!2979 (= (qInv!0 q!85) e!2092)))

(declare-fun b!4376 () Bool)

(declare-fun lambda!189 () Int)

(declare-fun all20!0 (array!266 Int) Bool)

(assert (=> b!4376 (= e!2092 (all20!0 q!85 lambda!189))))

(assert (= (and d!2979 res!3409) b!4376))

(declare-fun m!7141 () Bool)

(assert (=> b!4376 m!7141))

(assert (=> b!4370 d!2979))

(declare-fun d!2981 () Bool)

(assert (=> d!2981 (= (array_inv!65 iq!165) (bvsge (size!115 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!933 d!2981))

(declare-fun d!2983 () Bool)

(assert (=> d!2983 (= (array_inv!66 q!85) (bvsge (size!116 q!85) #b00000000000000000000000000000000))))

(assert (=> start!933 d!2983))

(declare-fun d!2985 () Bool)

(declare-fun res!3412 () Bool)

(declare-fun e!2095 () Bool)

(assert (=> d!2985 (=> (not res!3412) (not e!2095))))

(assert (=> d!2985 (= res!3412 (= (size!115 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!2985 (= (iqInv!0 iq!165) e!2095)))

(declare-fun b!4379 () Bool)

(declare-fun lambda!192 () Int)

(declare-fun all20Int!0 (array!264 Int) Bool)

(assert (=> b!4379 (= e!2095 (all20Int!0 iq!165 lambda!192))))

(assert (= (and d!2985 res!3412) b!4379))

(declare-fun m!7143 () Bool)

(assert (=> b!4379 m!7143))

(assert (=> b!4371 d!2985))

(declare-fun d!2987 () Bool)

(assert (=> d!2987 (= (QInt!0 (select (arr!115 iq!165) i!252)) (and (bvsle #b00000000000000000000000000000000 (select (arr!115 iq!165) i!252)) (bvsle (select (arr!115 iq!165) i!252) #b00000000111111111111111111111111)))))

(assert (=> b!4366 d!2987))

(declare-fun lt!2727 () array!264)

(declare-fun b!4392 () Bool)

(declare-fun e!2102 () tuple4!154)

(declare-fun lt!2730 () (_ FloatingPoint 11 53))

(declare-fun lt!2731 () (_ BitVec 32))

(declare-fun Unit!340 () Unit!337)

(assert (=> b!4392 (= e!2102 (tuple4!155 Unit!340 lt!2727 lt!2731 lt!2730))))

(declare-fun b!4393 () Bool)

(declare-fun e!2103 () Bool)

(declare-fun lt!2728 () tuple4!154)

(assert (=> b!4393 (= e!2103 (bvsle (_3!120 lt!2728) #b00000000000000000000000000000000))))

(declare-fun b!4394 () Bool)

(declare-fun res!3423 () Bool)

(declare-fun e!2104 () Bool)

(assert (=> b!4394 (=> (not res!3423) (not e!2104))))

(assert (=> b!4394 (= res!3423 (iqInv!0 lt!2714))))

(declare-fun b!4395 () Bool)

(declare-fun res!3424 () Bool)

(assert (=> b!4395 (=> (not res!3424) (not e!2103))))

(assert (=> b!4395 (= res!3424 (iqInv!0 (_2!132 lt!2728)))))

(declare-fun b!4396 () Bool)

(assert (=> b!4396 (= e!2104 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun d!2989 () Bool)

(assert (=> d!2989 e!2103))

(declare-fun res!3421 () Bool)

(assert (=> d!2989 (=> (not res!3421) (not e!2103))))

(assert (=> d!2989 (= res!3421 (and true true (bvsle #b00000000000000000000000000000000 (_3!120 lt!2728)) (bvsle (_3!120 lt!2728) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!77 lt!2728)) (fp.leq (_4!77 lt!2728) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2989 (= lt!2728 e!2102)))

(declare-fun c!692 () Bool)

(assert (=> d!2989 (= c!692 (bvsgt lt!2731 #b00000000000000000000000000000000))))

(assert (=> d!2989 (= lt!2731 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2729 () (_ FloatingPoint 11 53))

(assert (=> d!2989 (= lt!2730 (fp.add roundNearestTiesToEven (select (arr!116 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2729))))

(assert (=> d!2989 (= lt!2727 (array!265 (store (arr!115 lt!2714) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2716 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2729))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2716 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2729)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2716 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2729)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2716 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2729))))))) (size!115 lt!2714)))))

(assert (=> d!2989 (= lt!2729 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2716)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2716) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2716) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2716)))))))))

(assert (=> d!2989 e!2104))

(declare-fun res!3422 () Bool)

(assert (=> d!2989 (=> (not res!3422) (not e!2104))))

(assert (=> d!2989 (= res!3422 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2716) (fp.leq lt!2716 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2989 (= (computeModuloWhile!0 jz!53 q!85 lt!2714 jz!53 lt!2716) lt!2728)))

(declare-fun b!4397 () Bool)

(assert (=> b!4397 (= e!2102 (computeModuloWhile!0 jz!53 q!85 lt!2727 lt!2731 lt!2730))))

(assert (= (and d!2989 res!3422) b!4394))

(assert (= (and b!4394 res!3423) b!4396))

(assert (= (and d!2989 c!692) b!4397))

(assert (= (and d!2989 (not c!692)) b!4392))

(assert (= (and d!2989 res!3421) b!4395))

(assert (= (and b!4395 res!3424) b!4393))

(declare-fun m!7145 () Bool)

(assert (=> b!4394 m!7145))

(declare-fun m!7147 () Bool)

(assert (=> b!4395 m!7147))

(declare-fun m!7149 () Bool)

(assert (=> d!2989 m!7149))

(declare-fun m!7151 () Bool)

(assert (=> d!2989 m!7151))

(declare-fun m!7153 () Bool)

(assert (=> b!4397 m!7153))

(assert (=> b!4367 d!2989))

(push 1)

(assert (not b!4376))

(assert (not b!4397))

(assert (not b!4379))

(assert (not b!4394))

(assert (not b!4395))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

