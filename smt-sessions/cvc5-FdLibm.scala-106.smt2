; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!875 () Bool)

(assert start!875)

(declare-fun b!4128 () Bool)

(declare-datatypes ((array!228 0))(
  ( (array!229 (arr!101 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!101 (_ BitVec 32))) )
))
(declare-fun q!85 () array!228)

(declare-fun lt!2562 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((array!230 0))(
  ( (array!231 (arr!102 (Array (_ BitVec 32) (_ BitVec 32))) (size!102 (_ BitVec 32))) )
))
(declare-fun lt!2564 () array!230)

(declare-datatypes ((Unit!312 0))(
  ( (Unit!313) )
))
(declare-datatypes ((tuple4!140 0))(
  ( (tuple4!141 (_1!125 Unit!312) (_2!125 array!230) (_3!113 (_ BitVec 32)) (_4!70 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1918 () tuple4!140)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!228 array!230 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!140)

(assert (=> b!4128 (= e!1918 (computeModuloWhile!0 jz!53 q!85 lt!2564 jz!53 lt!2562))))

(declare-fun res!3230 () Bool)

(declare-fun e!1914 () Bool)

(assert (=> start!875 (=> (not res!3230) (not e!1914))))

(assert (=> start!875 (= res!3230 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!875 e!1914))

(assert (=> start!875 true))

(declare-fun array_inv!51 (array!228) Bool)

(assert (=> start!875 (array_inv!51 q!85)))

(declare-fun iq!165 () array!230)

(declare-fun array_inv!52 (array!230) Bool)

(assert (=> start!875 (array_inv!52 iq!165)))

(declare-fun b!4129 () Bool)

(declare-fun e!1917 () Bool)

(declare-fun lt!2565 () (_ BitVec 32))

(assert (=> b!4129 (= e!1917 (or (bvslt lt!2565 #b00000000000000000000000000000000) (bvsge lt!2565 (size!102 iq!165))))))

(assert (=> b!4129 (= lt!2565 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun b!4130 () Bool)

(declare-fun Unit!314 () Unit!312)

(assert (=> b!4130 (= e!1918 (tuple4!141 Unit!314 lt!2564 jz!53 lt!2562))))

(declare-fun b!4131 () Bool)

(declare-fun res!3232 () Bool)

(assert (=> b!4131 (=> (not res!3232) (not e!1914))))

(declare-fun qInv!0 (array!228) Bool)

(assert (=> b!4131 (= res!3232 (qInv!0 q!85))))

(declare-fun b!4132 () Bool)

(assert (=> b!4132 (= e!1914 e!1917)))

(declare-fun res!3231 () Bool)

(assert (=> b!4132 (=> (not res!3231) (not e!1917))))

(declare-fun lt!2566 () (_ FloatingPoint 11 53))

(declare-fun lt!2563 () tuple4!140)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4132 (= res!3231 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2566) (fp.lt lt!2566 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!102 (_2!125 lt!2563)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4132 (= lt!2566 (fp.sub roundNearestTiesToEven (_4!70 lt!2563) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!70 lt!2563) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!70 lt!2563) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!70 lt!2563) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!70 lt!2563) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4132 (= lt!2563 e!1918)))

(declare-fun c!656 () Bool)

(assert (=> b!4132 (= c!656 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4132 (= lt!2562 (select (arr!101 q!85) jz!53))))

(assert (=> b!4132 (= lt!2564 (array!231 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4133 () Bool)

(declare-fun res!3229 () Bool)

(assert (=> b!4133 (=> (not res!3229) (not e!1917))))

(declare-fun iqInv!0 (array!230) Bool)

(assert (=> b!4133 (= res!3229 (iqInv!0 iq!165))))

(assert (= (and start!875 res!3230) b!4131))

(assert (= (and b!4131 res!3232) b!4132))

(assert (= (and b!4132 c!656) b!4128))

(assert (= (and b!4132 (not c!656)) b!4130))

(assert (= (and b!4132 res!3231) b!4133))

(assert (= (and b!4133 res!3229) b!4129))

(declare-fun m!6947 () Bool)

(assert (=> b!4131 m!6947))

(declare-fun m!6949 () Bool)

(assert (=> b!4132 m!6949))

(declare-fun m!6951 () Bool)

(assert (=> b!4132 m!6951))

(declare-fun m!6953 () Bool)

(assert (=> start!875 m!6953))

(declare-fun m!6955 () Bool)

(assert (=> start!875 m!6955))

(declare-fun m!6957 () Bool)

(assert (=> b!4128 m!6957))

(declare-fun m!6959 () Bool)

(assert (=> b!4133 m!6959))

(push 1)

(assert (not start!875))

(assert (not b!4131))

(assert (not b!4128))

(assert (not b!4133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2928 () Bool)

(assert (=> d!2928 (= (array_inv!51 q!85) (bvsge (size!101 q!85) #b00000000000000000000000000000000))))

(assert (=> start!875 d!2928))

(declare-fun d!2930 () Bool)

(assert (=> d!2930 (= (array_inv!52 iq!165) (bvsge (size!102 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!875 d!2930))

(declare-fun d!2932 () Bool)

(declare-fun res!3235 () Bool)

(declare-fun e!1921 () Bool)

(assert (=> d!2932 (=> (not res!3235) (not e!1921))))

(assert (=> d!2932 (= res!3235 (= (size!101 q!85) #b00000000000000000000000000010100))))

(assert (=> d!2932 (= (qInv!0 q!85) e!1921)))

(declare-fun b!4136 () Bool)

(declare-fun lambda!165 () Int)

(declare-fun all20!0 (array!228 Int) Bool)

(assert (=> b!4136 (= e!1921 (all20!0 q!85 lambda!165))))

(assert (= (and d!2932 res!3235) b!4136))

(declare-fun m!6961 () Bool)

(assert (=> b!4136 m!6961))

(assert (=> b!4131 d!2932))

(declare-fun b!4149 () Bool)

(declare-fun e!1928 () Bool)

(assert (=> b!4149 (= e!1928 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun e!1930 () tuple4!140)

(declare-fun b!4151 () Bool)

(declare-fun lt!2578 () (_ BitVec 32))

(declare-fun lt!2580 () array!230)

(declare-fun lt!2579 () (_ FloatingPoint 11 53))

(declare-fun Unit!315 () Unit!312)

(assert (=> b!4151 (= e!1930 (tuple4!141 Unit!315 lt!2580 lt!2578 lt!2579))))

(declare-fun b!4152 () Bool)

(declare-fun res!3244 () Bool)

(declare-fun e!1929 () Bool)

(assert (=> b!4152 (=> (not res!3244) (not e!1929))))

(declare-fun lt!2577 () tuple4!140)

(assert (=> b!4152 (= res!3244 (iqInv!0 (_2!125 lt!2577)))))

(declare-fun b!4153 () Bool)

(assert (=> b!4153 (= e!1929 (bvsle (_3!113 lt!2577) #b00000000000000000000000000000000))))

(declare-fun b!4154 () Bool)

(declare-fun res!3247 () Bool)

(assert (=> b!4154 (=> (not res!3247) (not e!1928))))

(assert (=> b!4154 (= res!3247 (iqInv!0 lt!2564))))

(declare-fun b!4150 () Bool)

(assert (=> b!4150 (= e!1930 (computeModuloWhile!0 jz!53 q!85 lt!2580 lt!2578 lt!2579))))

(declare-fun d!2934 () Bool)

(assert (=> d!2934 e!1929))

(declare-fun res!3245 () Bool)

(assert (=> d!2934 (=> (not res!3245) (not e!1929))))

(assert (=> d!2934 (= res!3245 (and true true (bvsle #b00000000000000000000000000000000 (_3!113 lt!2577)) (bvsle (_3!113 lt!2577) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!70 lt!2577)) (fp.leq (_4!70 lt!2577) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2934 (= lt!2577 e!1930)))

(declare-fun c!659 () Bool)

(assert (=> d!2934 (= c!659 (bvsgt lt!2578 #b00000000000000000000000000000000))))

(assert (=> d!2934 (= lt!2578 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2581 () (_ FloatingPoint 11 53))

(assert (=> d!2934 (= lt!2579 (fp.add roundNearestTiesToEven (select (arr!101 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2581))))

(assert (=> d!2934 (= lt!2580 (array!231 (store (arr!102 lt!2564) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2562 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2581))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2562 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2581)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2562 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2581)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2562 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2581))))))) (size!102 lt!2564)))))

(assert (=> d!2934 (= lt!2581 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2562)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2562) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2562) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2562)))))))))

(assert (=> d!2934 e!1928))

(declare-fun res!3246 () Bool)

(assert (=> d!2934 (=> (not res!3246) (not e!1928))))

(assert (=> d!2934 (= res!3246 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2562) (fp.leq lt!2562 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2934 (= (computeModuloWhile!0 jz!53 q!85 lt!2564 jz!53 lt!2562) lt!2577)))

(assert (= (and d!2934 res!3246) b!4154))

(assert (= (and b!4154 res!3247) b!4149))

(assert (= (and d!2934 c!659) b!4150))

(assert (= (and d!2934 (not c!659)) b!4151))

(assert (= (and d!2934 res!3245) b!4152))

(assert (= (and b!4152 res!3244) b!4153))

(declare-fun m!6963 () Bool)

(assert (=> b!4152 m!6963))

(declare-fun m!6965 () Bool)

(assert (=> b!4154 m!6965))

(declare-fun m!6967 () Bool)

(assert (=> b!4150 m!6967))

(declare-fun m!6969 () Bool)

(assert (=> d!2934 m!6969))

(declare-fun m!6971 () Bool)

(assert (=> d!2934 m!6971))

(assert (=> b!4128 d!2934))

(declare-fun d!2936 () Bool)

(declare-fun res!3250 () Bool)

(declare-fun e!1933 () Bool)

(assert (=> d!2936 (=> (not res!3250) (not e!1933))))

(assert (=> d!2936 (= res!3250 (= (size!102 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!2936 (= (iqInv!0 iq!165) e!1933)))

(declare-fun b!4157 () Bool)

(declare-fun lambda!168 () Int)

(declare-fun all20Int!0 (array!230 Int) Bool)

(assert (=> b!4157 (= e!1933 (all20Int!0 iq!165 lambda!168))))

(assert (= (and d!2936 res!3250) b!4157))

(declare-fun m!6973 () Bool)

(assert (=> b!4157 m!6973))

(assert (=> b!4133 d!2936))

(push 1)

(assert (not b!4136))

(assert (not b!4157))

(assert (not b!4150))

(assert (not b!4154))

(assert (not b!4152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

