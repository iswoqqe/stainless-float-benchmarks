; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!893 () Bool)

(assert start!893)

(declare-datatypes ((array!246 0))(
  ( (array!247 (arr!109 (Array (_ BitVec 32) (_ BitVec 32))) (size!109 (_ BitVec 32))) )
))
(declare-fun lt!2628 () array!246)

(declare-fun lt!2629 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun b!4224 () Bool)

(declare-datatypes ((Unit!325 0))(
  ( (Unit!326) )
))
(declare-datatypes ((tuple4!148 0))(
  ( (tuple4!149 (_1!129 Unit!325) (_2!129 array!246) (_3!117 (_ BitVec 32)) (_4!74 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1992 () tuple4!148)

(declare-fun Unit!327 () Unit!325)

(assert (=> b!4224 (= e!1992 (tuple4!149 Unit!327 lt!2628 jz!53 lt!2629))))

(declare-fun b!4225 () Bool)

(declare-fun res!3295 () Bool)

(declare-fun e!1989 () Bool)

(assert (=> b!4225 (=> (not res!3295) (not e!1989))))

(declare-fun iq!165 () array!246)

(declare-fun iqInv!0 (array!246) Bool)

(assert (=> b!4225 (= res!3295 (iqInv!0 iq!165))))

(declare-fun res!3297 () Bool)

(declare-fun e!1993 () Bool)

(assert (=> start!893 (=> (not res!3297) (not e!1993))))

(assert (=> start!893 (= res!3297 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!893 e!1993))

(assert (=> start!893 true))

(declare-fun array_inv!59 (array!246) Bool)

(assert (=> start!893 (array_inv!59 iq!165)))

(declare-datatypes ((array!248 0))(
  ( (array!249 (arr!110 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!110 (_ BitVec 32))) )
))
(declare-fun q!85 () array!248)

(declare-fun array_inv!60 (array!248) Bool)

(assert (=> start!893 (array_inv!60 q!85)))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun b!4226 () Bool)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4226 (= e!1989 (and (bvsge (select (arr!109 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001)) (or (bvslt i!252 #b00000000000000000000000000000000) (bvsge i!252 (size!109 iq!165)))))))

(declare-fun b!4227 () Bool)

(assert (=> b!4227 (= e!1993 e!1989)))

(declare-fun res!3298 () Bool)

(assert (=> b!4227 (=> (not res!3298) (not e!1989))))

(declare-fun lt!2626 () tuple4!148)

(declare-fun lt!2627 () (_ FloatingPoint 11 53))

(assert (=> b!4227 (= res!3298 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2627) (fp.lt lt!2627 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!109 (_2!129 lt!2626)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4227 (= lt!2627 (fp.sub roundNearestTiesToEven (_4!74 lt!2626) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!74 lt!2626) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!74 lt!2626) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!74 lt!2626) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!74 lt!2626) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4227 (= lt!2626 e!1992)))

(declare-fun c!671 () Bool)

(assert (=> b!4227 (= c!671 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4227 (= lt!2629 (select (arr!110 q!85) jz!53))))

(assert (=> b!4227 (= lt!2628 (array!247 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4228 () Bool)

(declare-fun res!3296 () Bool)

(assert (=> b!4228 (=> (not res!3296) (not e!1993))))

(declare-fun qInv!0 (array!248) Bool)

(assert (=> b!4228 (= res!3296 (qInv!0 q!85))))

(declare-fun b!4229 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!248 array!246 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!148)

(assert (=> b!4229 (= e!1992 (computeModuloWhile!0 jz!53 q!85 lt!2628 jz!53 lt!2629))))

(assert (= (and start!893 res!3297) b!4228))

(assert (= (and b!4228 res!3296) b!4227))

(assert (= (and b!4227 c!671) b!4229))

(assert (= (and b!4227 (not c!671)) b!4224))

(assert (= (and b!4227 res!3298) b!4225))

(assert (= (and b!4225 res!3295) b!4226))

(declare-fun m!7023 () Bool)

(assert (=> b!4229 m!7023))

(declare-fun m!7025 () Bool)

(assert (=> b!4228 m!7025))

(declare-fun m!7027 () Bool)

(assert (=> b!4227 m!7027))

(declare-fun m!7029 () Bool)

(assert (=> b!4227 m!7029))

(declare-fun m!7031 () Bool)

(assert (=> b!4226 m!7031))

(declare-fun m!7033 () Bool)

(assert (=> start!893 m!7033))

(declare-fun m!7035 () Bool)

(assert (=> start!893 m!7035))

(declare-fun m!7037 () Bool)

(assert (=> b!4225 m!7037))

(push 1)

(assert (not b!4229))

(assert (not b!4225))

(assert (not start!893))

(assert (not b!4228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4242 () Bool)

(declare-fun res!3307 () Bool)

(declare-fun e!2000 () Bool)

(assert (=> b!4242 (=> (not res!3307) (not e!2000))))

(declare-fun lt!2640 () tuple4!148)

(assert (=> b!4242 (= res!3307 (iqInv!0 (_2!129 lt!2640)))))

(declare-fun e!2001 () tuple4!148)

(declare-fun lt!2642 () array!246)

(declare-fun lt!2643 () (_ BitVec 32))

(declare-fun b!4243 () Bool)

(declare-fun lt!2644 () (_ FloatingPoint 11 53))

(assert (=> b!4243 (= e!2001 (computeModuloWhile!0 jz!53 q!85 lt!2642 lt!2643 lt!2644))))

(declare-fun b!4244 () Bool)

(declare-fun e!2002 () Bool)

(assert (=> b!4244 (= e!2002 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun b!4245 () Bool)

(declare-fun Unit!328 () Unit!325)

(assert (=> b!4245 (= e!2001 (tuple4!149 Unit!328 lt!2642 lt!2643 lt!2644))))

(declare-fun d!2942 () Bool)

(assert (=> d!2942 e!2000))

(declare-fun res!3308 () Bool)

(assert (=> d!2942 (=> (not res!3308) (not e!2000))))

(assert (=> d!2942 (= res!3308 (and true true (bvsle #b00000000000000000000000000000000 (_3!117 lt!2640)) (bvsle (_3!117 lt!2640) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!74 lt!2640)) (fp.leq (_4!74 lt!2640) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2942 (= lt!2640 e!2001)))

(declare-fun c!674 () Bool)

(assert (=> d!2942 (= c!674 (bvsgt lt!2643 #b00000000000000000000000000000000))))

(assert (=> d!2942 (= lt!2643 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2641 () (_ FloatingPoint 11 53))

(assert (=> d!2942 (= lt!2644 (fp.add roundNearestTiesToEven (select (arr!110 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2641))))

(assert (=> d!2942 (= lt!2642 (array!247 (store (arr!109 lt!2628) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2629 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2641))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2629 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2641)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2629 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2641)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2629 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2641))))))) (size!109 lt!2628)))))

(assert (=> d!2942 (= lt!2641 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2629)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2629) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2629) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2629)))))))))

(assert (=> d!2942 e!2002))

(declare-fun res!3310 () Bool)

(assert (=> d!2942 (=> (not res!3310) (not e!2002))))

(assert (=> d!2942 (= res!3310 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2629) (fp.leq lt!2629 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2942 (= (computeModuloWhile!0 jz!53 q!85 lt!2628 jz!53 lt!2629) lt!2640)))

(declare-fun b!4246 () Bool)

(declare-fun res!3309 () Bool)

(assert (=> b!4246 (=> (not res!3309) (not e!2002))))

(assert (=> b!4246 (= res!3309 (iqInv!0 lt!2628))))

(declare-fun b!4247 () Bool)

(assert (=> b!4247 (= e!2000 (bvsle (_3!117 lt!2640) #b00000000000000000000000000000000))))

(assert (= (and d!2942 res!3310) b!4246))

(assert (= (and b!4246 res!3309) b!4244))

(assert (= (and d!2942 c!674) b!4243))

(assert (= (and d!2942 (not c!674)) b!4245))

(assert (= (and d!2942 res!3308) b!4242))

(assert (= (and b!4242 res!3307) b!4247))

(declare-fun m!7039 () Bool)

(assert (=> b!4242 m!7039))

(declare-fun m!7041 () Bool)

(assert (=> b!4243 m!7041))

(declare-fun m!7043 () Bool)

(assert (=> d!2942 m!7043))

(declare-fun m!7045 () Bool)

(assert (=> d!2942 m!7045))

(declare-fun m!7047 () Bool)

(assert (=> b!4246 m!7047))

(assert (=> b!4229 d!2942))

(declare-fun d!2944 () Bool)

(declare-fun res!3313 () Bool)

(declare-fun e!2005 () Bool)

(assert (=> d!2944 (=> (not res!3313) (not e!2005))))

(assert (=> d!2944 (= res!3313 (= (size!109 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!2944 (= (iqInv!0 iq!165) e!2005)))

(declare-fun b!4250 () Bool)

(declare-fun lambda!171 () Int)

(declare-fun all20Int!0 (array!246 Int) Bool)

(assert (=> b!4250 (= e!2005 (all20Int!0 iq!165 lambda!171))))

(assert (= (and d!2944 res!3313) b!4250))

(declare-fun m!7049 () Bool)

(assert (=> b!4250 m!7049))

(assert (=> b!4225 d!2944))

(declare-fun d!2946 () Bool)

(assert (=> d!2946 (= (array_inv!59 iq!165) (bvsge (size!109 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!893 d!2946))

(declare-fun d!2948 () Bool)

(assert (=> d!2948 (= (array_inv!60 q!85) (bvsge (size!110 q!85) #b00000000000000000000000000000000))))

(assert (=> start!893 d!2948))

(declare-fun d!2950 () Bool)

(declare-fun res!3316 () Bool)

(declare-fun e!2008 () Bool)

(assert (=> d!2950 (=> (not res!3316) (not e!2008))))

(assert (=> d!2950 (= res!3316 (= (size!110 q!85) #b00000000000000000000000000010100))))

(assert (=> d!2950 (= (qInv!0 q!85) e!2008)))

(declare-fun b!4253 () Bool)

(declare-fun lambda!174 () Int)

(declare-fun all20!0 (array!248 Int) Bool)

(assert (=> b!4253 (= e!2008 (all20!0 q!85 lambda!174))))

(assert (= (and d!2950 res!3316) b!4253))

(declare-fun m!7051 () Bool)

(assert (=> b!4253 m!7051))

(assert (=> b!4228 d!2950))

(push 1)

(assert (not b!4253))

(assert (not b!4246))

(assert (not b!4250))

(assert (not b!4242))

(assert (not b!4243))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

