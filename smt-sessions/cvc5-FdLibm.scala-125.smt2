; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1011 () Bool)

(assert start!1011)

(declare-fun b!4906 () Bool)

(declare-fun res!3808 () Bool)

(declare-fun e!2427 () Bool)

(assert (=> b!4906 (=> (not res!3808) (not e!2427))))

(declare-datatypes ((array!320 0))(
  ( (array!321 (arr!139 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!139 (_ BitVec 32))) )
))
(declare-fun q!85 () array!320)

(declare-fun qInv!0 (array!320) Bool)

(assert (=> b!4906 (= res!3808 (qInv!0 q!85))))

(declare-fun b!4907 () Bool)

(declare-fun res!3806 () Bool)

(declare-fun e!2430 () Bool)

(assert (=> b!4907 (=> (not res!3806) (not e!2430))))

(declare-datatypes ((array!322 0))(
  ( (array!323 (arr!140 (Array (_ BitVec 32) (_ BitVec 32))) (size!140 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!322)

(declare-fun iqInv!0 (array!322) Bool)

(assert (=> b!4907 (= res!3806 (iqInv!0 iq!165))))

(declare-fun res!3809 () Bool)

(assert (=> start!1011 (=> (not res!3809) (not e!2427))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!1011 (= res!3809 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1011 e!2427))

(assert (=> start!1011 true))

(declare-fun array_inv!89 (array!322) Bool)

(assert (=> start!1011 (array_inv!89 iq!165)))

(declare-fun array_inv!90 (array!320) Bool)

(assert (=> start!1011 (array_inv!90 q!85)))

(declare-fun b!4908 () Bool)

(declare-fun res!3804 () Bool)

(declare-fun e!2433 () Bool)

(assert (=> b!4908 (=> (not res!3804) (not e!2433))))

(declare-fun lt!3076 () (_ BitVec 32))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4908 (= res!3804 (iqInv!0 (array!323 (store (arr!140 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3076 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3076) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3076))) (size!140 iq!165))))))

(declare-fun b!4909 () Bool)

(declare-fun e!2431 () Bool)

(assert (=> b!4909 (= e!2430 e!2431)))

(declare-fun res!3810 () Bool)

(assert (=> b!4909 (=> (not res!3810) (not e!2431))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4909 (= res!3810 (QInt!0 lt!3076))))

(assert (=> b!4909 (= lt!3076 (select (arr!140 iq!165) i!252))))

(declare-fun b!4910 () Bool)

(declare-fun lt!3082 () (_ BitVec 32))

(assert (=> b!4910 (= e!2433 (or (bvslt lt!3082 #b00000000000000000000000000000000) (bvsge lt!3082 (size!140 iq!165))))))

(assert (=> b!4910 (= lt!3082 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun b!4911 () Bool)

(assert (=> b!4911 (= e!2427 e!2430)))

(declare-fun res!3803 () Bool)

(assert (=> b!4911 (=> (not res!3803) (not e!2430))))

(declare-datatypes ((Unit!384 0))(
  ( (Unit!385) )
))
(declare-datatypes ((tuple4!190 0))(
  ( (tuple4!191 (_1!150 Unit!384) (_2!150 array!322) (_3!138 (_ BitVec 32)) (_4!95 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!3081 () tuple4!190)

(declare-fun lt!3077 () (_ FloatingPoint 11 53))

(assert (=> b!4911 (= res!3803 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3077) (fp.lt lt!3077 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!140 (_2!150 lt!3081)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4911 (= lt!3077 (fp.sub roundNearestTiesToEven (_4!95 lt!3081) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!95 lt!3081) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!95 lt!3081) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!95 lt!3081) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!95 lt!3081) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!2428 () tuple4!190)

(assert (=> b!4911 (= lt!3081 e!2428)))

(declare-fun c!758 () Bool)

(assert (=> b!4911 (= c!758 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!3080 () (_ FloatingPoint 11 53))

(assert (=> b!4911 (= lt!3080 (select (arr!139 q!85) jz!53))))

(declare-fun lt!3079 () array!322)

(assert (=> b!4911 (= lt!3079 (array!323 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4912 () Bool)

(declare-fun res!3807 () Bool)

(assert (=> b!4912 (=> (not res!3807) (not e!2430))))

(assert (=> b!4912 (= res!3807 (and (bvsge (select (arr!140 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4913 () Bool)

(assert (=> b!4913 (= e!2431 e!2433)))

(declare-fun res!3805 () Bool)

(assert (=> b!4913 (=> (not res!3805) (not e!2433))))

(declare-fun lt!3078 () (_ BitVec 32))

(assert (=> b!4913 (= res!3805 (and (bvsge lt!3078 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!3078) (bvsle lt!3078 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4913 (= lt!3078 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4914 () Bool)

(declare-fun Unit!386 () Unit!384)

(assert (=> b!4914 (= e!2428 (tuple4!191 Unit!386 lt!3079 jz!53 lt!3080))))

(declare-fun b!4915 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!320 array!322 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!190)

(assert (=> b!4915 (= e!2428 (computeModuloWhile!0 jz!53 q!85 lt!3079 jz!53 lt!3080))))

(assert (= (and start!1011 res!3809) b!4906))

(assert (= (and b!4906 res!3808) b!4911))

(assert (= (and b!4911 c!758) b!4915))

(assert (= (and b!4911 (not c!758)) b!4914))

(assert (= (and b!4911 res!3803) b!4907))

(assert (= (and b!4907 res!3806) b!4912))

(assert (= (and b!4912 res!3807) b!4909))

(assert (= (and b!4909 res!3810) b!4913))

(assert (= (and b!4913 res!3805) b!4908))

(assert (= (and b!4908 res!3804) b!4910))

(declare-fun m!7511 () Bool)

(assert (=> b!4909 m!7511))

(declare-fun m!7513 () Bool)

(assert (=> b!4909 m!7513))

(declare-fun m!7515 () Bool)

(assert (=> b!4906 m!7515))

(declare-fun m!7517 () Bool)

(assert (=> b!4912 m!7517))

(declare-fun m!7519 () Bool)

(assert (=> b!4911 m!7519))

(declare-fun m!7521 () Bool)

(assert (=> b!4911 m!7521))

(declare-fun m!7523 () Bool)

(assert (=> b!4915 m!7523))

(declare-fun m!7525 () Bool)

(assert (=> start!1011 m!7525))

(declare-fun m!7527 () Bool)

(assert (=> start!1011 m!7527))

(declare-fun m!7529 () Bool)

(assert (=> b!4908 m!7529))

(declare-fun m!7531 () Bool)

(assert (=> b!4908 m!7531))

(declare-fun m!7533 () Bool)

(assert (=> b!4907 m!7533))

(push 1)

(assert (not b!4909))

(assert (not b!4907))

(assert (not b!4915))

(assert (not start!1011))

(assert (not b!4908))

(assert (not b!4906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3049 () Bool)

(assert (=> d!3049 (= (QInt!0 lt!3076) (and (bvsle #b00000000000000000000000000000000 lt!3076) (bvsle lt!3076 #b00000000111111111111111111111111)))))

(assert (=> b!4909 d!3049))

(declare-fun b!4928 () Bool)

(declare-fun res!3822 () Bool)

(declare-fun e!2441 () Bool)

(assert (=> b!4928 (=> (not res!3822) (not e!2441))))

(declare-fun lt!3093 () tuple4!190)

(assert (=> b!4928 (= res!3822 (iqInv!0 (_2!150 lt!3093)))))

(declare-fun b!4929 () Bool)

(assert (=> b!4929 (= e!2441 (bvsle (_3!138 lt!3093) #b00000000000000000000000000000000))))

(declare-fun lt!3096 () (_ FloatingPoint 11 53))

(declare-fun b!4930 () Bool)

(declare-fun lt!3095 () array!322)

(declare-fun lt!3094 () (_ BitVec 32))

(declare-fun e!2440 () tuple4!190)

(declare-fun Unit!387 () Unit!384)

(assert (=> b!4930 (= e!2440 (tuple4!191 Unit!387 lt!3095 lt!3094 lt!3096))))

(declare-fun b!4931 () Bool)

(declare-fun res!3820 () Bool)

(declare-fun e!2442 () Bool)

(assert (=> b!4931 (=> (not res!3820) (not e!2442))))

(assert (=> b!4931 (= res!3820 (iqInv!0 lt!3079))))

(declare-fun b!4933 () Bool)

(assert (=> b!4933 (= e!2442 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun d!3051 () Bool)

(assert (=> d!3051 e!2441))

(declare-fun res!3819 () Bool)

(assert (=> d!3051 (=> (not res!3819) (not e!2441))))

(assert (=> d!3051 (= res!3819 (and true true (bvsle #b00000000000000000000000000000000 (_3!138 lt!3093)) (bvsle (_3!138 lt!3093) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!95 lt!3093)) (fp.leq (_4!95 lt!3093) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!3051 (= lt!3093 e!2440)))

(declare-fun c!761 () Bool)

(assert (=> d!3051 (= c!761 (bvsgt lt!3094 #b00000000000000000000000000000000))))

(assert (=> d!3051 (= lt!3094 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!3097 () (_ FloatingPoint 11 53))

(assert (=> d!3051 (= lt!3096 (fp.add roundNearestTiesToEven (select (arr!139 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!3097))))

(assert (=> d!3051 (= lt!3095 (array!323 (store (arr!140 lt!3079) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!3080 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!3097))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!3080 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!3097)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!3080 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!3097)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!3080 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!3097))))))) (size!140 lt!3079)))))

(assert (=> d!3051 (= lt!3097 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!3080)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!3080) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!3080) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!3080)))))))))

(assert (=> d!3051 e!2442))

(declare-fun res!3821 () Bool)

(assert (=> d!3051 (=> (not res!3821) (not e!2442))))

(assert (=> d!3051 (= res!3821 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3080) (fp.leq lt!3080 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!3051 (= (computeModuloWhile!0 jz!53 q!85 lt!3079 jz!53 lt!3080) lt!3093)))

(declare-fun b!4932 () Bool)

(assert (=> b!4932 (= e!2440 (computeModuloWhile!0 jz!53 q!85 lt!3095 lt!3094 lt!3096))))

(assert (= (and d!3051 res!3821) b!4931))

(assert (= (and b!4931 res!3820) b!4933))

(assert (= (and d!3051 c!761) b!4932))

(assert (= (and d!3051 (not c!761)) b!4930))

(assert (= (and d!3051 res!3819) b!4928))

(assert (= (and b!4928 res!3822) b!4929))

(declare-fun m!7535 () Bool)

(assert (=> b!4928 m!7535))

(declare-fun m!7537 () Bool)

(assert (=> b!4931 m!7537))

(declare-fun m!7539 () Bool)

(assert (=> d!3051 m!7539))

(declare-fun m!7541 () Bool)

(assert (=> d!3051 m!7541))

(declare-fun m!7543 () Bool)

(assert (=> b!4932 m!7543))

(assert (=> b!4915 d!3051))

(declare-fun d!3053 () Bool)

(declare-fun res!3825 () Bool)

(declare-fun e!2445 () Bool)

(assert (=> d!3053 (=> (not res!3825) (not e!2445))))

(assert (=> d!3053 (= res!3825 (= (size!140 (array!323 (store (arr!140 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3076 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3076) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3076))) (size!140 iq!165))) #b00000000000000000000000000010100))))

(assert (=> d!3053 (= (iqInv!0 (array!323 (store (arr!140 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3076 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3076) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3076))) (size!140 iq!165))) e!2445)))

(declare-fun lambda!215 () Int)

(declare-fun b!4936 () Bool)

(declare-fun all20Int!0 (array!322 Int) Bool)

(assert (=> b!4936 (= e!2445 (all20Int!0 (array!323 (store (arr!140 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3076 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3076) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3076))) (size!140 iq!165)) lambda!215))))

(assert (= (and d!3053 res!3825) b!4936))

(declare-fun m!7545 () Bool)

(assert (=> b!4936 m!7545))

(assert (=> b!4908 d!3053))

(declare-fun d!3055 () Bool)

(declare-fun res!3828 () Bool)

(declare-fun e!2448 () Bool)

(assert (=> d!3055 (=> (not res!3828) (not e!2448))))

(assert (=> d!3055 (= res!3828 (= (size!139 q!85) #b00000000000000000000000000010100))))

(assert (=> d!3055 (= (qInv!0 q!85) e!2448)))

(declare-fun b!4939 () Bool)

(declare-fun lambda!218 () Int)

(declare-fun all20!0 (array!320 Int) Bool)

(assert (=> b!4939 (= e!2448 (all20!0 q!85 lambda!218))))

(assert (= (and d!3055 res!3828) b!4939))

(declare-fun m!7547 () Bool)

(assert (=> b!4939 m!7547))

(assert (=> b!4906 d!3055))

(declare-fun d!3057 () Bool)

(assert (=> d!3057 (= (array_inv!89 iq!165) (bvsge (size!140 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!1011 d!3057))

(declare-fun d!3059 () Bool)

(assert (=> d!3059 (= (array_inv!90 q!85) (bvsge (size!139 q!85) #b00000000000000000000000000000000))))

(assert (=> start!1011 d!3059))

(declare-fun bs!1378 () Bool)

(declare-fun b!4940 () Bool)

(assert (= bs!1378 (and b!4940 b!4936)))

(declare-fun lambda!219 () Int)

(assert (=> bs!1378 (= lambda!219 lambda!215)))

(declare-fun d!3061 () Bool)

(declare-fun res!3829 () Bool)

(declare-fun e!2449 () Bool)

(assert (=> d!3061 (=> (not res!3829) (not e!2449))))

(assert (=> d!3061 (= res!3829 (= (size!140 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!3061 (= (iqInv!0 iq!165) e!2449)))

(assert (=> b!4940 (= e!2449 (all20Int!0 iq!165 lambda!219))))

(assert (= (and d!3061 res!3829) b!4940))

(declare-fun m!7549 () Bool)

(assert (=> b!4940 m!7549))

(assert (=> b!4907 d!3061))

(push 1)

(assert (not b!4931))

(assert (not b!4939))

(assert (not b!4932))

(assert (not b!4936))

(assert (not b!4940))

(assert (not b!4928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

