; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3001 () Bool)

(assert start!3001)

(declare-fun b!16677 () Bool)

(declare-fun res!13122 () Bool)

(declare-fun e!9087 () Bool)

(assert (=> b!16677 (=> (not res!13122) (not e!9087))))

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!16677 (= res!13122 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!16678 () Bool)

(declare-fun res!13117 () Bool)

(assert (=> b!16678 (=> (not res!13117) (not e!9087))))

(declare-datatypes ((array!1292 0))(
  ( (array!1293 (arr!563 (Array (_ BitVec 32) (_ BitVec 32))) (size!563 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1292)

(declare-fun iqInv!0 (array!1292) Bool)

(assert (=> b!16678 (= res!13117 (iqInv!0 iq!146))))

(declare-fun b!16679 () Bool)

(declare-fun lt!8343 () (_ FloatingPoint 11 53))

(declare-fun e!9088 () Bool)

(declare-datatypes ((array!1294 0))(
  ( (array!1295 (arr!564 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!564 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1294)

(assert (=> b!16679 (= e!9088 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8343) (fp.leq lt!8343 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000)) (let ((ix!185 (bvsub j!78 #b00000000000000000000000000000001))) (or (bvslt ix!185 #b00000000000000000000000000000000) (bvsge ix!185 (size!564 q!79))))))))

(declare-fun b!16681 () Bool)

(assert (=> b!16681 (= e!9087 e!9088)))

(declare-fun res!13118 () Bool)

(assert (=> b!16681 (=> (not res!13118) (not e!9088))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun jz!49 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16681 (= res!13118 (QInt!0 (select (store (arr!563 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16681 (= lt!8343 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16682 () Bool)

(declare-fun res!13121 () Bool)

(assert (=> b!16682 (=> (not res!13121) (not e!9087))))

(declare-fun qInv!0 (array!1294) Bool)

(assert (=> b!16682 (= res!13121 (qInv!0 q!79))))

(declare-fun b!16680 () Bool)

(declare-fun res!13120 () Bool)

(assert (=> b!16680 (=> (not res!13120) (not e!9087))))

(assert (=> b!16680 (= res!13120 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun res!13119 () Bool)

(assert (=> start!3001 (=> (not res!13119) (not e!9087))))

(assert (=> start!3001 (= res!13119 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!3001 e!9087))

(assert (=> start!3001 true))

(declare-fun array_inv!511 (array!1292) Bool)

(assert (=> start!3001 (array_inv!511 iq!146)))

(declare-fun array_inv!512 (array!1294) Bool)

(assert (=> start!3001 (array_inv!512 q!79)))

(assert (= (and start!3001 res!13119) b!16682))

(assert (= (and b!16682 res!13121) b!16680))

(assert (= (and b!16680 res!13120) b!16678))

(assert (= (and b!16678 res!13117) b!16677))

(assert (= (and b!16677 res!13122) b!16681))

(assert (= (and b!16681 res!13118) b!16679))

(declare-fun m!26725 () Bool)

(assert (=> b!16678 m!26725))

(declare-fun m!26727 () Bool)

(assert (=> b!16681 m!26727))

(declare-fun m!26729 () Bool)

(assert (=> b!16681 m!26729))

(assert (=> b!16681 m!26729))

(declare-fun m!26731 () Bool)

(assert (=> b!16681 m!26731))

(declare-fun m!26733 () Bool)

(assert (=> b!16682 m!26733))

(declare-fun m!26735 () Bool)

(assert (=> start!3001 m!26735))

(declare-fun m!26737 () Bool)

(assert (=> start!3001 m!26737))

(push 1)

(assert (not b!16682))

(assert (not b!16681))

(assert (not b!16678))

(assert (not start!3001))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8321 () Bool)

(declare-fun res!13125 () Bool)

(declare-fun e!9091 () Bool)

(assert (=> d!8321 (=> (not res!13125) (not e!9091))))

(assert (=> d!8321 (= res!13125 (= (size!564 q!79) #b00000000000000000000000000010100))))

(assert (=> d!8321 (= (qInv!0 q!79) e!9091)))

(declare-fun b!16685 () Bool)

(declare-fun lambda!765 () Int)

(declare-fun all20!0 (array!1294 Int) Bool)

(assert (=> b!16685 (= e!9091 (all20!0 q!79 lambda!765))))

(assert (= (and d!8321 res!13125) b!16685))

(declare-fun m!26739 () Bool)

(assert (=> b!16685 m!26739))

(assert (=> b!16682 d!8321))

(declare-fun d!8323 () Bool)

(assert (=> d!8323 (= (QInt!0 (select (store (arr!563 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343))))))) (bvsub jz!49 j!78))) (and (bvsle #b00000000000000000000000000000000 (select (store (arr!563 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343))))))) (bvsub jz!49 j!78))) (bvsle (select (store (arr!563 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8343))))))) (bvsub jz!49 j!78)) #b00000000111111111111111111111111)))))

(assert (=> b!16681 d!8323))

(declare-fun d!8325 () Bool)

(declare-fun res!13128 () Bool)

(declare-fun e!9094 () Bool)

(assert (=> d!8325 (=> (not res!13128) (not e!9094))))

(assert (=> d!8325 (= res!13128 (= (size!563 iq!146) #b00000000000000000000000000010100))))

(assert (=> d!8325 (= (iqInv!0 iq!146) e!9094)))

(declare-fun b!16688 () Bool)

(declare-fun lambda!768 () Int)

(declare-fun all20Int!0 (array!1292 Int) Bool)

(assert (=> b!16688 (= e!9094 (all20Int!0 iq!146 lambda!768))))

(assert (= (and d!8325 res!13128) b!16688))

(declare-fun m!26741 () Bool)

(assert (=> b!16688 m!26741))

(assert (=> b!16678 d!8325))

(declare-fun d!8327 () Bool)

(assert (=> d!8327 (= (array_inv!511 iq!146) (bvsge (size!563 iq!146) #b00000000000000000000000000000000))))

(assert (=> start!3001 d!8327))

(declare-fun d!8329 () Bool)

(assert (=> d!8329 (= (array_inv!512 q!79) (bvsge (size!564 q!79) #b00000000000000000000000000000000))))

(assert (=> start!3001 d!8329))

(push 1)

(assert (not b!16685))

(assert (not b!16688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

