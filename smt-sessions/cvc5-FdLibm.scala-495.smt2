; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2775 () Bool)

(assert start!2775)

(declare-fun res!11826 () Bool)

(declare-fun e!8356 () Bool)

(assert (=> start!2775 (=> (not res!11826) (not e!8356))))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> start!2775 (= res!11826 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2775 e!8356))

(assert (=> start!2775 true))

(declare-datatypes ((array!1128 0))(
  ( (array!1129 (arr!493 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!493 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1128)

(declare-fun array_inv!441 (array!1128) Bool)

(assert (=> start!2775 (array_inv!441 q!31)))

(declare-datatypes ((array!1130 0))(
  ( (array!1131 (arr!494 (Array (_ BitVec 32) (_ BitVec 32))) (size!494 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1130)

(declare-fun array_inv!442 (array!1130) Bool)

(assert (=> start!2775 (array_inv!442 iq!76)))

(declare-fun b!15195 () Bool)

(declare-fun e!8357 () Bool)

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun lt!7823 () (_ BitVec 32))

(assert (=> b!15195 (= e!8357 (and (not (= carry!33 #b00000000000000000000000000000000)) (not (= #b00000000000000000000000000000000 (bvand lt!7823 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000000111111111111111111111111 lt!7823) #b10000000000000000000000000000000)))))))

(declare-fun b!15196 () Bool)

(declare-fun e!8358 () Bool)

(assert (=> b!15196 (= e!8358 e!8357)))

(declare-fun res!11825 () Bool)

(assert (=> b!15196 (=> (not res!11825) (not e!8357))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15196 (= res!11825 (QInt!0 lt!7823))))

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!15196 (= lt!7823 (select (arr!494 iq!76) i!142))))

(declare-fun b!15197 () Bool)

(assert (=> b!15197 (= e!8356 e!8358)))

(declare-fun res!11822 () Bool)

(assert (=> b!15197 (=> (not res!11822) (not e!8358))))

(declare-fun lt!7826 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!1598 0))(
  ( (Unit!1599) )
))
(declare-datatypes ((tuple4!374 0))(
  ( (tuple4!375 (_1!386 Unit!1598) (_2!386 array!1130) (_3!318 (_ BitVec 32)) (_4!187 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7822 () tuple4!374)

(assert (=> b!15197 (= res!11822 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7826) (fp.lt lt!7826 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!494 (_2!386 lt!7822)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15197 (= lt!7826 (fp.sub roundNearestTiesToEven (_4!187 lt!7822) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!187 lt!7822) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!187 lt!7822) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!187 lt!7822) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!187 lt!7822) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8360 () tuple4!374)

(assert (=> b!15197 (= lt!7822 e!8360)))

(declare-fun c!1898 () Bool)

(assert (=> b!15197 (= c!1898 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7825 () (_ FloatingPoint 11 53))

(assert (=> b!15197 (= lt!7825 (select (arr!493 q!31) jz!20))))

(declare-fun lt!7824 () array!1130)

(assert (=> b!15197 (= lt!7824 (array!1131 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15198 () Bool)

(declare-fun res!11823 () Bool)

(assert (=> b!15198 (=> (not res!11823) (not e!8356))))

(declare-fun qInv!0 (array!1128) Bool)

(assert (=> b!15198 (= res!11823 (qInv!0 q!31))))

(declare-fun b!15199 () Bool)

(declare-fun Unit!1600 () Unit!1598)

(assert (=> b!15199 (= e!8360 (tuple4!375 Unit!1600 lt!7824 jz!20 lt!7825))))

(declare-fun b!15200 () Bool)

(declare-fun res!11824 () Bool)

(assert (=> b!15200 (=> (not res!11824) (not e!8358))))

(assert (=> b!15200 (= res!11824 (and (bvsge (select (arr!494 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15201 () Bool)

(declare-fun res!11821 () Bool)

(assert (=> b!15201 (=> (not res!11821) (not e!8358))))

(declare-fun iqInv!0 (array!1130) Bool)

(assert (=> b!15201 (= res!11821 (iqInv!0 iq!76))))

(declare-fun b!15202 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1128 array!1130 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!374)

(assert (=> b!15202 (= e!8360 (computeModuloWhile!0 jz!20 q!31 lt!7824 jz!20 lt!7825))))

(assert (= (and start!2775 res!11826) b!15198))

(assert (= (and b!15198 res!11823) b!15197))

(assert (= (and b!15197 c!1898) b!15202))

(assert (= (and b!15197 (not c!1898)) b!15199))

(assert (= (and b!15197 res!11822) b!15201))

(assert (= (and b!15201 res!11821) b!15200))

(assert (= (and b!15200 res!11824) b!15196))

(assert (= (and b!15196 res!11825) b!15195))

(declare-fun m!24729 () Bool)

(assert (=> b!15202 m!24729))

(declare-fun m!24731 () Bool)

(assert (=> b!15201 m!24731))

(declare-fun m!24733 () Bool)

(assert (=> start!2775 m!24733))

(declare-fun m!24735 () Bool)

(assert (=> start!2775 m!24735))

(declare-fun m!24737 () Bool)

(assert (=> b!15196 m!24737))

(declare-fun m!24739 () Bool)

(assert (=> b!15196 m!24739))

(declare-fun m!24741 () Bool)

(assert (=> b!15198 m!24741))

(declare-fun m!24743 () Bool)

(assert (=> b!15197 m!24743))

(declare-fun m!24745 () Bool)

(assert (=> b!15197 m!24745))

(declare-fun m!24747 () Bool)

(assert (=> b!15200 m!24747))

(push 1)

(assert (not b!15202))

(assert (not b!15201))

(assert (not b!15198))

(assert (not b!15196))

(assert (not start!2775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7583 () Bool)

(assert (=> d!7583 (= (array_inv!441 q!31) (bvsge (size!493 q!31) #b00000000000000000000000000000000))))

(assert (=> start!2775 d!7583))

(declare-fun d!7585 () Bool)

(assert (=> d!7585 (= (array_inv!442 iq!76) (bvsge (size!494 iq!76) #b00000000000000000000000000000000))))

(assert (=> start!2775 d!7585))

(declare-fun d!7587 () Bool)

(declare-fun res!11829 () Bool)

(declare-fun e!8364 () Bool)

(assert (=> d!7587 (=> (not res!11829) (not e!8364))))

(assert (=> d!7587 (= res!11829 (= (size!493 q!31) #b00000000000000000000000000010100))))

(assert (=> d!7587 (= (qInv!0 q!31) e!8364)))

(declare-fun b!15205 () Bool)

(declare-fun lambda!684 () Int)

(declare-fun all20!0 (array!1128 Int) Bool)

(assert (=> b!15205 (= e!8364 (all20!0 q!31 lambda!684))))

(assert (= (and d!7587 res!11829) b!15205))

(declare-fun m!24749 () Bool)

(assert (=> b!15205 m!24749))

(assert (=> b!15198 d!7587))

(declare-fun d!7589 () Bool)

(assert (=> d!7589 (= (QInt!0 lt!7823) (and (bvsle #b00000000000000000000000000000000 lt!7823) (bvsle lt!7823 #b00000000111111111111111111111111)))))

(assert (=> b!15196 d!7589))

(declare-fun b!15218 () Bool)

(declare-fun res!11838 () Bool)

(declare-fun e!8372 () Bool)

(assert (=> b!15218 (=> (not res!11838) (not e!8372))))

(assert (=> b!15218 (= res!11838 (iqInv!0 lt!7824))))

(declare-fun lt!7837 () (_ FloatingPoint 11 53))

(declare-fun lt!7838 () array!1130)

(declare-fun b!15219 () Bool)

(declare-fun lt!7841 () (_ BitVec 32))

(declare-fun e!8373 () tuple4!374)

(declare-fun Unit!1601 () Unit!1598)

(assert (=> b!15219 (= e!8373 (tuple4!375 Unit!1601 lt!7838 lt!7841 lt!7837))))

(declare-fun d!7591 () Bool)

(declare-fun e!8371 () Bool)

(assert (=> d!7591 e!8371))

(declare-fun res!11840 () Bool)

(assert (=> d!7591 (=> (not res!11840) (not e!8371))))

(declare-fun lt!7840 () tuple4!374)

(assert (=> d!7591 (= res!11840 (and true true (bvsle #b00000000000000000000000000000000 (_3!318 lt!7840)) (bvsle (_3!318 lt!7840) jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!187 lt!7840)) (fp.leq (_4!187 lt!7840) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!7591 (= lt!7840 e!8373)))

(declare-fun c!1901 () Bool)

(assert (=> d!7591 (= c!1901 (bvsgt lt!7841 #b00000000000000000000000000000000))))

(assert (=> d!7591 (= lt!7841 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun lt!7839 () (_ FloatingPoint 11 53))

(assert (=> d!7591 (= lt!7837 (fp.add roundNearestTiesToEven (select (arr!493 q!31) (bvsub jz!20 #b00000000000000000000000000000001)) lt!7839))))

(assert (=> d!7591 (= lt!7838 (array!1131 (store (arr!494 lt!7824) (bvsub jz!20 jz!20) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!7825 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7839))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!7825 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7839)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!7825 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7839)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!7825 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7839))))))) (size!494 lt!7824)))))

(assert (=> d!7591 (= lt!7839 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7825)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7825) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7825) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7825)))))))))

(assert (=> d!7591 e!8372))

(declare-fun res!11841 () Bool)

(assert (=> d!7591 (=> (not res!11841) (not e!8372))))

(assert (=> d!7591 (= res!11841 (and (bvsle #b00000000000000000000000000000000 jz!20) (bvsle jz!20 jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7825) (fp.leq lt!7825 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!7591 (= (computeModuloWhile!0 jz!20 q!31 lt!7824 jz!20 lt!7825) lt!7840)))

(declare-fun b!15220 () Bool)

(declare-fun res!11839 () Bool)

(assert (=> b!15220 (=> (not res!11839) (not e!8371))))

(assert (=> b!15220 (= res!11839 (iqInv!0 (_2!386 lt!7840)))))

(declare-fun b!15221 () Bool)

(assert (=> b!15221 (= e!8371 (bvsle (_3!318 lt!7840) #b00000000000000000000000000000000))))

(declare-fun b!15222 () Bool)

(assert (=> b!15222 (= e!8373 (computeModuloWhile!0 jz!20 q!31 lt!7838 lt!7841 lt!7837))))

(declare-fun b!15223 () Bool)

(assert (=> b!15223 (= e!8372 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (= (and d!7591 res!11841) b!15218))

(assert (= (and b!15218 res!11838) b!15223))

(assert (= (and d!7591 c!1901) b!15222))

(assert (= (and d!7591 (not c!1901)) b!15219))

(assert (= (and d!7591 res!11840) b!15220))

(assert (= (and b!15220 res!11839) b!15221))

(declare-fun m!24751 () Bool)

(assert (=> b!15218 m!24751))

(declare-fun m!24753 () Bool)

(assert (=> d!7591 m!24753))

(declare-fun m!24755 () Bool)

(assert (=> d!7591 m!24755))

(declare-fun m!24757 () Bool)

(assert (=> b!15220 m!24757))

(declare-fun m!24759 () Bool)

(assert (=> b!15222 m!24759))

(assert (=> b!15202 d!7591))

(declare-fun d!7593 () Bool)

(declare-fun res!11844 () Bool)

(declare-fun e!8376 () Bool)

(assert (=> d!7593 (=> (not res!11844) (not e!8376))))

(assert (=> d!7593 (= res!11844 (= (size!494 iq!76) #b00000000000000000000000000010100))))

(assert (=> d!7593 (= (iqInv!0 iq!76) e!8376)))

(declare-fun b!15226 () Bool)

(declare-fun lambda!687 () Int)

(declare-fun all20Int!0 (array!1130 Int) Bool)

(assert (=> b!15226 (= e!8376 (all20Int!0 iq!76 lambda!687))))

(assert (= (and d!7593 res!11844) b!15226))

(declare-fun m!24761 () Bool)

(assert (=> b!15226 m!24761))

(assert (=> b!15201 d!7593))

(push 1)

(assert (not b!15205))

(assert (not b!15226))

(assert (not b!15218))

(assert (not b!15222))

(assert (not b!15220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

