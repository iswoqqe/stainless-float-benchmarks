; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2789 () Bool)

(assert start!2789)

(declare-fun b!15243 () Bool)

(declare-fun e!8388 () Bool)

(declare-fun i!142 () (_ BitVec 32))

(declare-datatypes ((array!1134 0))(
  ( (array!1135 (arr!495 (Array (_ BitVec 32) (_ BitVec 32))) (size!495 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1134)

(assert (=> b!15243 (= e!8388 (or (bvslt i!142 #b00000000000000000000000000000000) (bvsge i!142 (size!495 iq!76))))))

(declare-fun lt!7850 () (_ FloatingPoint 11 53))

(declare-fun b!15244 () Bool)

(declare-datatypes ((Unit!1602 0))(
  ( (Unit!1603) )
))
(declare-datatypes ((tuple4!376 0))(
  ( (tuple4!377 (_1!387 Unit!1602) (_2!387 array!1134) (_3!319 (_ BitVec 32)) (_4!188 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8390 () tuple4!376)

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun lt!7853 () array!1134)

(declare-fun Unit!1604 () Unit!1602)

(assert (=> b!15244 (= e!8390 (tuple4!377 Unit!1604 lt!7853 jz!20 lt!7850))))

(declare-fun b!15245 () Bool)

(declare-fun res!11860 () Bool)

(assert (=> b!15245 (=> (not res!11860) (not e!8388))))

(declare-fun iqInv!0 (array!1134) Bool)

(assert (=> b!15245 (= res!11860 (iqInv!0 iq!76))))

(declare-fun b!15246 () Bool)

(declare-fun res!11861 () Bool)

(assert (=> b!15246 (=> (not res!11861) (not e!8388))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!15246 (= res!11861 (and (bvsge (select (arr!495 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun res!11862 () Bool)

(declare-fun e!8387 () Bool)

(assert (=> start!2789 (=> (not res!11862) (not e!8387))))

(assert (=> start!2789 (= res!11862 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2789 e!8387))

(assert (=> start!2789 true))

(declare-datatypes ((array!1136 0))(
  ( (array!1137 (arr!496 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!496 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1136)

(declare-fun array_inv!443 (array!1136) Bool)

(assert (=> start!2789 (array_inv!443 q!31)))

(declare-fun array_inv!444 (array!1134) Bool)

(assert (=> start!2789 (array_inv!444 iq!76)))

(declare-fun b!15247 () Bool)

(declare-fun res!11859 () Bool)

(assert (=> b!15247 (=> (not res!11859) (not e!8388))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15247 (= res!11859 (QInt!0 (select (arr!495 iq!76) i!142)))))

(declare-fun b!15248 () Bool)

(assert (=> b!15248 (= e!8387 e!8388)))

(declare-fun res!11858 () Bool)

(assert (=> b!15248 (=> (not res!11858) (not e!8388))))

(declare-fun lt!7851 () (_ FloatingPoint 11 53))

(declare-fun lt!7852 () tuple4!376)

(assert (=> b!15248 (= res!11858 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7851) (fp.lt lt!7851 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!495 (_2!387 lt!7852)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15248 (= lt!7851 (fp.sub roundNearestTiesToEven (_4!188 lt!7852) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!188 lt!7852) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!188 lt!7852) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!188 lt!7852) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!188 lt!7852) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!15248 (= lt!7852 e!8390)))

(declare-fun c!1904 () Bool)

(assert (=> b!15248 (= c!1904 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!15248 (= lt!7850 (select (arr!496 q!31) jz!20))))

(assert (=> b!15248 (= lt!7853 (array!1135 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15249 () Bool)

(declare-fun res!11857 () Bool)

(assert (=> b!15249 (=> (not res!11857) (not e!8387))))

(declare-fun qInv!0 (array!1136) Bool)

(assert (=> b!15249 (= res!11857 (qInv!0 q!31))))

(declare-fun b!15250 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1136 array!1134 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!376)

(assert (=> b!15250 (= e!8390 (computeModuloWhile!0 jz!20 q!31 lt!7853 jz!20 lt!7850))))

(assert (= (and start!2789 res!11862) b!15249))

(assert (= (and b!15249 res!11857) b!15248))

(assert (= (and b!15248 c!1904) b!15250))

(assert (= (and b!15248 (not c!1904)) b!15244))

(assert (= (and b!15248 res!11858) b!15245))

(assert (= (and b!15245 res!11860) b!15246))

(assert (= (and b!15246 res!11861) b!15247))

(assert (= (and b!15247 res!11859) b!15243))

(declare-fun m!24763 () Bool)

(assert (=> b!15247 m!24763))

(assert (=> b!15247 m!24763))

(declare-fun m!24765 () Bool)

(assert (=> b!15247 m!24765))

(declare-fun m!24767 () Bool)

(assert (=> b!15249 m!24767))

(declare-fun m!24769 () Bool)

(assert (=> b!15245 m!24769))

(declare-fun m!24771 () Bool)

(assert (=> b!15250 m!24771))

(declare-fun m!24773 () Bool)

(assert (=> start!2789 m!24773))

(declare-fun m!24775 () Bool)

(assert (=> start!2789 m!24775))

(declare-fun m!24777 () Bool)

(assert (=> b!15246 m!24777))

(declare-fun m!24779 () Bool)

(assert (=> b!15248 m!24779))

(declare-fun m!24781 () Bool)

(assert (=> b!15248 m!24781))

(push 1)

(assert (not b!15245))

(assert (not b!15249))

(assert (not b!15247))

(assert (not start!2789))

(assert (not b!15250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7596 () Bool)

(assert (=> d!7596 (= (array_inv!443 q!31) (bvsge (size!496 q!31) #b00000000000000000000000000000000))))

(assert (=> start!2789 d!7596))

(declare-fun d!7598 () Bool)

(assert (=> d!7598 (= (array_inv!444 iq!76) (bvsge (size!495 iq!76) #b00000000000000000000000000000000))))

(assert (=> start!2789 d!7598))

(declare-fun d!7600 () Bool)

(assert (=> d!7600 (= (QInt!0 (select (arr!495 iq!76) i!142)) (and (bvsle #b00000000000000000000000000000000 (select (arr!495 iq!76) i!142)) (bvsle (select (arr!495 iq!76) i!142) #b00000000111111111111111111111111)))))

(assert (=> b!15247 d!7600))

(declare-fun d!7602 () Bool)

(declare-fun res!11865 () Bool)

(declare-fun e!8394 () Bool)

(assert (=> d!7602 (=> (not res!11865) (not e!8394))))

(assert (=> d!7602 (= res!11865 (= (size!495 iq!76) #b00000000000000000000000000010100))))

(assert (=> d!7602 (= (iqInv!0 iq!76) e!8394)))

(declare-fun b!15253 () Bool)

(declare-fun lambda!690 () Int)

(declare-fun all20Int!0 (array!1134 Int) Bool)

(assert (=> b!15253 (= e!8394 (all20Int!0 iq!76 lambda!690))))

(assert (= (and d!7602 res!11865) b!15253))

(declare-fun m!24783 () Bool)

(assert (=> b!15253 m!24783))

(assert (=> b!15245 d!7602))

(declare-fun d!7604 () Bool)

(declare-fun res!11868 () Bool)

(declare-fun e!8397 () Bool)

(assert (=> d!7604 (=> (not res!11868) (not e!8397))))

(assert (=> d!7604 (= res!11868 (= (size!496 q!31) #b00000000000000000000000000010100))))

(assert (=> d!7604 (= (qInv!0 q!31) e!8397)))

(declare-fun b!15256 () Bool)

(declare-fun lambda!693 () Int)

(declare-fun all20!0 (array!1136 Int) Bool)

(assert (=> b!15256 (= e!8397 (all20!0 q!31 lambda!693))))

(assert (= (and d!7604 res!11868) b!15256))

(declare-fun m!24785 () Bool)

(assert (=> b!15256 m!24785))

(assert (=> b!15249 d!7604))

(declare-fun b!15269 () Bool)

(declare-fun e!8404 () Bool)

(declare-fun lt!7864 () tuple4!376)

(assert (=> b!15269 (= e!8404 (bvsle (_3!319 lt!7864) #b00000000000000000000000000000000))))

(declare-fun b!15270 () Bool)

(declare-fun res!11878 () Bool)

(declare-fun e!8406 () Bool)

(assert (=> b!15270 (=> (not res!11878) (not e!8406))))

(assert (=> b!15270 (= res!11878 (iqInv!0 lt!7853))))

(declare-fun d!7606 () Bool)

(assert (=> d!7606 e!8404))

(declare-fun res!11880 () Bool)

(assert (=> d!7606 (=> (not res!11880) (not e!8404))))

(assert (=> d!7606 (= res!11880 (and true true (bvsle #b00000000000000000000000000000000 (_3!319 lt!7864)) (bvsle (_3!319 lt!7864) jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!188 lt!7864)) (fp.leq (_4!188 lt!7864) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!8405 () tuple4!376)

(assert (=> d!7606 (= lt!7864 e!8405)))

(declare-fun c!1907 () Bool)

(declare-fun lt!7866 () (_ BitVec 32))

(assert (=> d!7606 (= c!1907 (bvsgt lt!7866 #b00000000000000000000000000000000))))

(assert (=> d!7606 (= lt!7866 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun lt!7865 () (_ FloatingPoint 11 53))

(declare-fun lt!7867 () (_ FloatingPoint 11 53))

(assert (=> d!7606 (= lt!7867 (fp.add roundNearestTiesToEven (select (arr!496 q!31) (bvsub jz!20 #b00000000000000000000000000000001)) lt!7865))))

(declare-fun lt!7868 () array!1134)

(assert (=> d!7606 (= lt!7868 (array!1135 (store (arr!495 lt!7853) (bvsub jz!20 jz!20) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!7850 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7865))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!7850 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7865)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!7850 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7865)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!7850 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7865))))))) (size!495 lt!7853)))))

(assert (=> d!7606 (= lt!7865 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7850)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7850) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7850) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7850)))))))))

(assert (=> d!7606 e!8406))

(declare-fun res!11879 () Bool)

(assert (=> d!7606 (=> (not res!11879) (not e!8406))))

(assert (=> d!7606 (= res!11879 (and (bvsle #b00000000000000000000000000000000 jz!20) (bvsle jz!20 jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7850) (fp.leq lt!7850 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!7606 (= (computeModuloWhile!0 jz!20 q!31 lt!7853 jz!20 lt!7850) lt!7864)))

(declare-fun b!15271 () Bool)

(declare-fun res!11877 () Bool)

(assert (=> b!15271 (=> (not res!11877) (not e!8404))))

(assert (=> b!15271 (= res!11877 (iqInv!0 (_2!387 lt!7864)))))

(declare-fun b!15272 () Bool)

(assert (=> b!15272 (= e!8405 (computeModuloWhile!0 jz!20 q!31 lt!7868 lt!7866 lt!7867))))

(declare-fun b!15273 () Bool)

(declare-fun Unit!1605 () Unit!1602)

(assert (=> b!15273 (= e!8405 (tuple4!377 Unit!1605 lt!7868 lt!7866 lt!7867))))

(declare-fun b!15274 () Bool)

(assert (=> b!15274 (= e!8406 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (= (and d!7606 res!11879) b!15270))

(assert (= (and b!15270 res!11878) b!15274))

(assert (= (and d!7606 c!1907) b!15272))

(assert (= (and d!7606 (not c!1907)) b!15273))

(assert (= (and d!7606 res!11880) b!15271))

(assert (= (and b!15271 res!11877) b!15269))

(declare-fun m!24787 () Bool)

(assert (=> b!15270 m!24787))

(declare-fun m!24789 () Bool)

(assert (=> d!7606 m!24789))

(declare-fun m!24791 () Bool)

(assert (=> d!7606 m!24791))

(declare-fun m!24793 () Bool)

(assert (=> b!15271 m!24793))

(declare-fun m!24795 () Bool)

(assert (=> b!15272 m!24795))

(assert (=> b!15250 d!7606))

(push 1)

(assert (not b!15253))

(assert (not b!15270))

(assert (not b!15271))

(assert (not b!15256))

(assert (not b!15272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

