; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3015 () Bool)

(assert start!3015)

(declare-fun b!16729 () Bool)

(declare-fun e!9117 () Bool)

(declare-fun e!9115 () Bool)

(assert (=> b!16729 (= e!9117 e!9115)))

(declare-fun res!13171 () Bool)

(assert (=> b!16729 (=> (not res!13171) (not e!9115))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(declare-datatypes ((array!1302 0))(
  ( (array!1303 (arr!567 (Array (_ BitVec 32) (_ BitVec 32))) (size!567 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1302)

(declare-fun lt!8351 () (_ FloatingPoint 11 53))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16729 (= res!13171 (QInt!0 (select (store (arr!567 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16729 (= lt!8351 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16730 () Bool)

(declare-fun res!13174 () Bool)

(assert (=> b!16730 (=> (not res!13174) (not e!9117))))

(assert (=> b!16730 (= res!13174 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16731 () Bool)

(declare-fun lt!8352 () (_ BitVec 32))

(declare-datatypes ((array!1304 0))(
  ( (array!1305 (arr!568 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!568 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1304)

(assert (=> b!16731 (= e!9115 (or (bvslt lt!8352 #b00000000000000000000000000000000) (bvsge lt!8352 (size!568 q!79))))))

(assert (=> b!16731 (= lt!8352 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun res!13170 () Bool)

(assert (=> start!3015 (=> (not res!13170) (not e!9117))))

(assert (=> start!3015 (= res!13170 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!3015 e!9117))

(assert (=> start!3015 true))

(declare-fun array_inv!515 (array!1302) Bool)

(assert (=> start!3015 (array_inv!515 iq!146)))

(declare-fun array_inv!516 (array!1304) Bool)

(assert (=> start!3015 (array_inv!516 q!79)))

(declare-fun b!16732 () Bool)

(declare-fun res!13169 () Bool)

(assert (=> b!16732 (=> (not res!13169) (not e!9117))))

(declare-fun qInv!0 (array!1304) Bool)

(assert (=> b!16732 (= res!13169 (qInv!0 q!79))))

(declare-fun b!16733 () Bool)

(declare-fun res!13176 () Bool)

(assert (=> b!16733 (=> (not res!13176) (not e!9115))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16733 (= res!13176 (P!3 (select (arr!568 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!16734 () Bool)

(declare-fun res!13173 () Bool)

(assert (=> b!16734 (=> (not res!13173) (not e!9115))))

(assert (=> b!16734 (= res!13173 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8351) (fp.leq lt!8351 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!16735 () Bool)

(declare-fun res!13172 () Bool)

(assert (=> b!16735 (=> (not res!13172) (not e!9117))))

(declare-fun iqInv!0 (array!1302) Bool)

(assert (=> b!16735 (= res!13172 (iqInv!0 iq!146))))

(declare-fun b!16736 () Bool)

(declare-fun res!13175 () Bool)

(assert (=> b!16736 (=> (not res!13175) (not e!9117))))

(assert (=> b!16736 (= res!13175 (bvsgt j!78 #b00000000000000000000000000000000))))

(assert (= (and start!3015 res!13170) b!16732))

(assert (= (and b!16732 res!13169) b!16730))

(assert (= (and b!16730 res!13174) b!16735))

(assert (= (and b!16735 res!13172) b!16736))

(assert (= (and b!16736 res!13175) b!16729))

(assert (= (and b!16729 res!13171) b!16734))

(assert (= (and b!16734 res!13173) b!16733))

(assert (= (and b!16733 res!13176) b!16731))

(declare-fun m!26761 () Bool)

(assert (=> start!3015 m!26761))

(declare-fun m!26763 () Bool)

(assert (=> start!3015 m!26763))

(declare-fun m!26765 () Bool)

(assert (=> b!16735 m!26765))

(declare-fun m!26767 () Bool)

(assert (=> b!16732 m!26767))

(declare-fun m!26769 () Bool)

(assert (=> b!16733 m!26769))

(assert (=> b!16733 m!26769))

(declare-fun m!26771 () Bool)

(assert (=> b!16733 m!26771))

(declare-fun m!26773 () Bool)

(assert (=> b!16729 m!26773))

(declare-fun m!26775 () Bool)

(assert (=> b!16729 m!26775))

(assert (=> b!16729 m!26775))

(declare-fun m!26777 () Bool)

(assert (=> b!16729 m!26777))

(push 1)

(assert (not b!16733))

(assert (not start!3015))

(assert (not b!16732))

(assert (not b!16735))

(assert (not b!16729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8333 () Bool)

(declare-fun res!13179 () Bool)

(declare-fun e!9121 () Bool)

(assert (=> d!8333 (=> (not res!13179) (not e!9121))))

(assert (=> d!8333 (= res!13179 (= (size!568 q!79) #b00000000000000000000000000010100))))

(assert (=> d!8333 (= (qInv!0 q!79) e!9121)))

(declare-fun b!16739 () Bool)

(declare-fun lambda!771 () Int)

(declare-fun all20!0 (array!1304 Int) Bool)

(assert (=> b!16739 (= e!9121 (all20!0 q!79 lambda!771))))

(assert (= (and d!8333 res!13179) b!16739))

(declare-fun m!26779 () Bool)

(assert (=> b!16739 m!26779))

(assert (=> b!16732 d!8333))

(declare-fun d!8335 () Bool)

(assert (=> d!8335 (= (array_inv!515 iq!146) (bvsge (size!567 iq!146) #b00000000000000000000000000000000))))

(assert (=> start!3015 d!8335))

(declare-fun d!8337 () Bool)

(assert (=> d!8337 (= (array_inv!516 q!79) (bvsge (size!568 q!79) #b00000000000000000000000000000000))))

(assert (=> start!3015 d!8337))

(declare-fun d!8339 () Bool)

(assert (=> d!8339 (= (P!3 (select (arr!568 q!79) (bvsub j!78 #b00000000000000000000000000000001))) (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!568 q!79) (bvsub j!78 #b00000000000000000000000000000001))) (fp.leq (select (arr!568 q!79) (bvsub j!78 #b00000000000000000000000000000001)) (fp #b0 #b10000110001 #b0011111111111111111111111111111111111111111111101100))))))

(assert (=> b!16733 d!8339))

(declare-fun d!8341 () Bool)

(declare-fun res!13182 () Bool)

(declare-fun e!9124 () Bool)

(assert (=> d!8341 (=> (not res!13182) (not e!9124))))

(assert (=> d!8341 (= res!13182 (= (size!567 iq!146) #b00000000000000000000000000010100))))

(assert (=> d!8341 (= (iqInv!0 iq!146) e!9124)))

(declare-fun b!16742 () Bool)

(declare-fun lambda!774 () Int)

(declare-fun all20Int!0 (array!1302 Int) Bool)

(assert (=> b!16742 (= e!9124 (all20Int!0 iq!146 lambda!774))))

(assert (= (and d!8341 res!13182) b!16742))

(declare-fun m!26781 () Bool)

(assert (=> b!16742 m!26781))

(assert (=> b!16735 d!8341))

(declare-fun d!8343 () Bool)

(assert (=> d!8343 (= (QInt!0 (select (store (arr!567 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351))))))) (bvsub jz!49 j!78))) (and (bvsle #b00000000000000000000000000000000 (select (store (arr!567 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351))))))) (bvsub jz!49 j!78))) (bvsle (select (store (arr!567 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8351))))))) (bvsub jz!49 j!78)) #b00000000111111111111111111111111)))))

(assert (=> b!16729 d!8343))

(push 1)

(assert (not b!16739))

(assert (not b!16742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

