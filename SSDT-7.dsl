/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-7.aml, Sat Jul  9 23:08:30 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000198A (6538)
 *     Revision         0x01
 *     Checksum         0x05
 *     OEM ID           "NvdRef"
 *     OEM Table ID     "NvdTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
DefinitionBlock ("", "SSDT", 1, "NvdRef", "NvdTabl", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- ./refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.OIDE, MethodObj)    // 0 Arguments
    External (_SB_.OSID, MethodObj)    // 0 Arguments
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.IGPU.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.VID_, DeviceObj)
    External (_SB_.PCI0.PEG0.VID_.HPEV, IntObj)
    External (_SB_.PCI0.PEG0.VID_.NOPE, IntObj)
    External (_SB_.PCI0.PEG0.VID_.SSDS, BuffFieldObj)
    External (_SB_.PCI0.PEG0.VID_.SSID, FieldUnitObj)
    External (_SB_.PCI0.PEG0.VID_.VDID, FieldUnitObj)
    External (_SB_.PCI0.PEG0.VID_.VDP8, BuffFieldObj)
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.SAT1.SDSM, MethodObj)    // Imported: 4 Arguments
    External (BBRD, MethodObj)    // 2 Arguments
    External (ECGB, MethodObj)    // 0 Arguments
    External (ECS4, MethodObj)    // 1 Arguments
    External (GENS, MethodObj)    // 3 Arguments
    External (IDMN, FieldUnitObj)
    External (IDPC, FieldUnitObj)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (NVHA, FieldUnitObj)
    External (VDP1, MethodObj)    // 2 Arguments
    External (VDP2, MethodObj)    // 2 Arguments

    Scope (\_SB.PCI0.PEG0.VID)
    {
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00010400)
        Field (NVHM, AnyAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            Offset (0x100), 
            NVHO,   32, 
            RVBS,   32, 
            Offset (0x180), 
            TNDI,   8, 
            DGND,   8, 
            IGND,   8, 
            Offset (0x190), 
            Offset (0x1B0), 
            DDI1,   32, 
            DDI2,   32, 
            DDI3,   32, 
            DDI4,   32, 
            DDI5,   32, 
            DDI6,   32, 
            DDI7,   32, 
            DDI8,   32, 
            Offset (0x200), 
            GACD,   16, 
            GATD,   16, 
            Offset (0x260), 
            DCP1,   32, 
            DCP2,   32, 
            DCP3,   32, 
            DCP4,   32, 
            DCP5,   32, 
            DCP6,   32, 
            DCP7,   32, 
            DCP8,   32, 
            DCA1,   32, 
            DCA2,   32, 
            DCA3,   32, 
            DCA4,   32, 
            DCA5,   32, 
            DCA6,   32, 
            DCA7,   32, 
            DCA8,   32, 
            DNA1,   32, 
            DNA2,   32, 
            DNA3,   32, 
            DNA4,   32, 
            DNA5,   32, 
            DNA6,   32, 
            DNA7,   32, 
            DNA8,   32, 
            Offset (0x3C0), 
            RAPM,   8, 
            EAPM,   8, 
            TSLC,   16, 
            DNDI,   8, 
            Offset (0x400), 
            RBF1,   262144, 
            RBF2,   262144
        }

        OperationRegion (DGPV, PCI_Config, 0x00, 0x04)
        Field (DGPV, AnyAcc, NoLock, Preserve)
        {
            VEND,   32
        }

        OperationRegion (DGPS, PCI_Config, 0x2C, 0x04)
        Field (DGPS, AnyAcc, NoLock, Preserve)
        {
            SVID,   32
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\_SB.PCI0.PEG0)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }
    }

    Scope (\_SB.PCI0.PEG0.VID)
    {
        OperationRegion (NPCI, PCI_Config, 0x80, 0x80)
        Field (NPCI, AnyAcc, NoLock, Preserve)
        {
            Offset (0x08), 
                ,   5, 
            LNKD,   1
        }

        OperationRegion (RPCI, SystemMemory, 0xF8008000, 0x1000)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKM,   1, 
                ,   1, 
            RCCC,   1, 
            Offset (0x1FC), 
                ,   9, 
            SGL1,   1, 
            Offset (0x214), 
            Offset (0x216), 
            LNKS,   4, 
            Offset (0x224), 
            Offset (0x225), 
            DQDA,   1, 
            Offset (0xC28), 
            HCLQ,   1, 
            Offset (0xC34), 
                ,   30, 
            PEDQ,   1, 
            PIDQ,   1, 
            Offset (0xDFC), 
                ,   1, 
            PEPO,   3, 
            Offset (0xE08), 
                ,   31, 
            ROE0,   1, 
            Offset (0xE28), 
                ,   31, 
            ROE1,   1, 
            Offset (0xE48), 
                ,   31, 
            ROE2,   1, 
            Offset (0xE68), 
                ,   31, 
            ROE3,   1, 
            Offset (0xE88), 
                ,   31, 
            ROE4,   1, 
            Offset (0xEA8), 
                ,   31, 
            ROE5,   1, 
            Offset (0xEC8), 
                ,   31, 
            ROE6,   1, 
            Offset (0xEE8), 
                ,   31, 
            ROE7,   1, 
            Offset (0xF08), 
                ,   31, 
            ROE8,   1, 
            Offset (0xF28), 
                ,   31, 
            ROE9,   1, 
            Offset (0xF48), 
                ,   31, 
            ROEA,   1, 
            Offset (0xF68), 
                ,   31, 
            ROEB,   1, 
            Offset (0xF88), 
                ,   31, 
            ROEC,   1, 
            Offset (0xFA8), 
                ,   31, 
            ROED,   1, 
            Offset (0xFC8), 
                ,   31, 
            ROEE,   1, 
            Offset (0xFE8), 
                ,   31, 
            ROEF,   1
        }

        OperationRegion (DMIB, SystemMemory, 0xFED18000, 0x1000)
        Field (DMIB, DWordAcc, Lock, Preserve)
        {
            Offset (0xC34), 
            LLGE,   1, 
                ,   28, 
            PCGE,   1, 
                ,   1, 
            LGGE,   1
        }

        OperationRegion (PEGR, SystemMemory, 0xF8008000, 0x0100)
        Field (PEGR, ByteAcc, NoLock, Preserve)
        {
            PREG,   2048
        }

        OperationRegion (VGAR, SystemMemory, 0xF8100000, 0x0100)
        Field (VGAR, ByteAcc, NoLock, Preserve)
        {
            VREG,   2048
        }

        Name (PEGB, Buffer (0x0100)
        {
            /* 0000 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0008 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0010 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0018 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0020 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0028 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0030 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0038 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0040 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0048 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0050 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0058 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0060 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0068 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0070 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0078 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0080 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0088 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0090 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0098 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00 
        })
        Name (VGAB, Buffer (0x0100)
        {
            /* 0000 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0008 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0010 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0018 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0020 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0028 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0030 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0038 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0040 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0048 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0050 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0058 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0060 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0068 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0070 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0078 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0080 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0088 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0090 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0098 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00 
        })
        Name (L3DT, Package (0x10)
        {
            0x25, 
            0x1B, 
            0xA2, 
            0x44, 
            0x17, 
            0x62, 
            0x17, 
            0x46, 
            0xBF, 
            0xB7, 
            0x41, 
            0x51, 
            0x4C, 
            0xEA, 
            0xC2, 
            0x41
        })
        Name (L3D0, Package (0x10)
        {
            0x93, 
            0x3B, 
            0x54, 
            0x4D, 
            0x54, 
            0xD0, 
            0x7D, 
            0x51, 
            0x8E, 
            0xEB, 
            0x78, 
            0x20, 
            0x3A, 
            0xE4, 
            0xD2, 
            0x59
        })
        Name (L3D1, Package (0x10)
        {
            0x92, 
            0x01, 
            0x4C, 
            0x8B, 
            0x4E, 
            0xF3, 
            0xD0, 
            0x2B, 
            0x18, 
            0xE7, 
            0x97, 
            0x87, 
            0xA2, 
            0xDD, 
            0x2D, 
            0xA8
        })
        Name (L3D2, Package (0x10)
        {
            0x6D, 
            0x7A, 
            0xF4, 
            0xC2, 
            0x52, 
            0x1B, 
            0x56, 
            0xF1, 
            0x99, 
            0xB5, 
            0x84, 
            0x9F, 
            0xE2, 
            0x4B, 
            0x29, 
            0xD8
        })
        Name (CSC0, Package (0x10)
        {
            0x76, 
            0x31, 
            0x84, 
            0x07, 
            0x15, 
            0xD8, 
            0xB9, 
            0x83, 
            0xF9, 
            0x2A, 
            0xAC, 
            0xBF, 
            0x1D, 
            0xC0, 
            0x8E, 
            0x51
        })
        Name (CSC1, Package (0x10)
        {
            0xFD, 
            0xA6, 
            0xFF, 
            0xE4, 
            0xEB, 
            0xD7, 
            0xF7, 
            0xCD, 
            0xAE, 
            0xEF, 
            0xBF, 
            0xFD, 
            0xA4, 
            0x2B, 
            0x13, 
            0x83
        })
        Name (CSC2, Package (0x10)
        {
            0x89, 
            0x42, 
            0x07, 
            0xA9, 
            0xF9, 
            0xAA, 
            0x03, 
            0x9C, 
            0x60, 
            0xA6, 
            0xCB, 
            0x7E, 
            0xD0, 
            0x0D, 
            0x18, 
            0x5B
        })
        Name (CSC3, Package (0x10)
        {
            0x05, 
            0x8B, 
            0x74, 
            0x57, 
            0x63, 
            0xEC, 
            0x94, 
            0x54, 
            0x6C, 
            0xBD, 
            0xB4, 
            0x4A, 
            0xF8, 
            0x4D, 
            0x5D, 
            0xDF
        })
        Name (CSC4, Package (0x10)
        {
            0xF5, 
            0xB6, 
            0x02, 
            0xF3, 
            0xEC, 
            0x3D, 
            0xA6, 
            0x24, 
            0xD4, 
            0xAE, 
            0xB4, 
            0x04, 
            0xE8, 
            0x81, 
            0x5F, 
            0x74
        })
        Name (CSC5, Package (0x10)
        {
            0x78, 
            0x5F, 
            0x9D, 
            0x11, 
            0x81, 
            0x68, 
            0xE9, 
            0x27, 
            0x55, 
            0x23, 
            0x6E, 
            0x25, 
            0x02, 
            0x1E, 
            0x09, 
            0x80
        })
        Name (CSC6, Package (0x10)
        {
            0x5F, 
            0x2C, 
            0xD9, 
            0x5C, 
            0xFF, 
            0x77, 
            0x8B, 
            0x15, 
            0x18, 
            0x70, 
            0x7A, 
            0x1E, 
            0x7D, 
            0x9C, 
            0x10, 
            0x62
        })
        Name (CSC7, Package (0x10)
        {
            0xEB, 
            0x1D, 
            0x9F, 
            0xA5, 
            0xB7, 
            0x1F, 
            0x9A, 
            0x0A, 
            0x9F, 
            0x56, 
            0x1F, 
            0xB6, 
            0x9B, 
            0xFA, 
            0x7A, 
            0x41
        })
        Name (CSC8, Package (0x10)
        {
            0xAE, 
            0xC3, 
            0x88, 
            0x1D, 
            0x36, 
            0x74, 
            0x39, 
            0x71, 
            0x60, 
            0x37, 
            0xB0, 
            0xE4, 
            0xB3, 
            0x24, 
            0xF4, 
            0x49
        })
        Name (CSC9, Package (0x10)
        {
            0xF8, 
            0x2E, 
            0xB7, 
            0x1C, 
            0x24, 
            0xCF, 
            0xF6, 
            0x6B, 
            0x7B, 
            0x1A, 
            0x8C, 
            0x35, 
            0xA9, 
            0xE8, 
            0x95, 
            0x48
        })
        Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
        {
            Store (Arg0, VDP8)
            VDP1 (0x01, VDP8)
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            If (LEqual (ECGB (), 0x01))
            {
                Return (Package (0x08)
                {
                    0x80000100, 
                    0x80000400, 
                    0x80007302, 
                    0x80007303, 
                    0x80006300, 
                    0x80006301, 
                    0x80007304, 
                    0x80006305
                })
            }
            Else
            {
                Return (Package (0x08)
                {
                    0x80000100, 
                    0x8000A450, 
                    0x80007302, 
                    0x80007303, 
                    0x80006300, 
                    0x80006301, 
                    0x80007304, 
                    0x80006305
                })
            }
        }

        Device (CRT)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (LLess (OSID (), 0x20))
                {
                    Return (And (0x80000100, 0xFFFF))
                }

                Return (0x80000100)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Store (VDP1 (0x02, 0x02), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Store (VDP1 (0x03, 0x02), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                VDP2 (0x02, Arg0)
            }
        }

        Device (LCD)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (LEqual (ECGB (), 0x01))
                {
                    If (LLess (OSID (), 0x20))
                    {
                        Return (And (0x80000400, 0xFFFF))
                    }

                    Return (0x80000400)
                }
                Else
                {
                    If (LLess (OSID (), 0x20))
                    {
                        Return (And (0x8000A450, 0xFFFF))
                    }

                    Return (0x8000A450)
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Store (VDP1 (0x02, 0x01), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Store (VDP1 (0x03, 0x01), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                VDP2 (0x01, Arg0)
            }

            Name (BRT0, 0x64)
            Name (DBCL, Package (0x12) {})
            Method (_BCL, 0, Serialized)  // _BCL: Brightness Control Levels
            {
                If (LEqual (OIDE (), 0x01))
                {
                    Return (Package (0x67)
                    {
                        0x50, 
                        0x32, 
                        0x05, 
                        0x05, 
                        0x05, 
                        0x05, 
                        0x05, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }
                Else
                {
                    Name (BRT1, Buffer (0x12) {})
                    CreateByteField (BRT1, 0x00, BRT2)
                    Store (0x01, BRT2)
                    Store (GENS (0x09, BRT1, SizeOf (BRT1)), Local2)
                    Store (0x00, Local0)
                    Store (0x12, Local1)
                    While (LLess (Local0, Local1))
                    {
                        Store (BBRD (Local2, Local0), Local3)
                        Store (Local3, Index (DBCL, Local0))
                        Increment (Local0)
                    }

                    Return (DBCL)
                }
            }

            Method (_BCM, 1, Serialized)  // _BCM: Brightness Control Method
            {
                If (LGreater (OSID (), 0x10)) {}
                Name (BRT3, Buffer (0x02) {})
                CreateByteField (BRT3, 0x00, BRT4)
                CreateByteField (BRT3, 0x01, BRT5)
                Store (0x02, BRT4)
                Store (Arg0, BRT5)
                Store (Arg0, BRT0)
                GENS (0x09, BRT3, SizeOf (BRT3))
            }

            Method (_BQC, 0, Serialized)  // _BQC: Brightness Query Current
            {
                Store (GENS (0x09, 0x03, 0x00), Local0)
                Store (Local0, BRT0)
                Return (Local0)
            }
        }

        Device (DVI)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (LLess (OSID (), 0x20))
                {
                    Return (And (0x80007302, 0xFFFF))
                }

                Return (0x80007302)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Store (VDP1 (0x02, 0x08), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Store (VDP1 (0x03, 0x08), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                VDP2 (0x08, Arg0)
            }
        }

        Device (DVI2)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (LLess (OSID (), 0x20))
                {
                    Return (And (0x80007303, 0xFFFF))
                }

                Return (0x80007303)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Store (VDP1 (0x02, 0x10), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Store (VDP1 (0x03, 0x10), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                VDP2 (0x10, Arg0)
            }
        }

        Device (DVI3)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (LLess (OSID (), 0x20))
                {
                    Return (And (0x80007304, 0xFFFF))
                }

                Return (0x80007304)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Store (VDP1 (0x02, 0x80), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Store (VDP1 (0x03, 0x80), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                VDP2 (0x80, Arg0)
            }
        }

        Device (DP)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (LLess (OSID (), 0x20))
                {
                    Return (And (0x80006300, 0xFFFF))
                }

                Return (0x80006300)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Store (VDP1 (0x02, 0x20), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Store (VDP1 (0x03, 0x20), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                VDP2 (0x20, Arg0)
            }
        }

        Device (DP2)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (LLess (OSID (), 0x20))
                {
                    Return (And (0x80006301, 0xFFFF))
                }

                Return (0x80006301)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Store (VDP1 (0x02, 0x40), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Store (VDP1 (0x03, 0x40), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                VDP2 (0x40, Arg0)
            }
        }

        Device (DP3)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (LLess (OSID (), 0x20))
                {
                    Return (And (0x80006305, 0xFFFF))
                }

                Return (0x80006305)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Store (VDP1 (0x02, 0x0100), Local0)
                And (Local0, 0xFFFF, Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Store (VDP1 (0x03, 0x0100), Local0)
                And (Local0, 0xFFFF, Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                VDP2 (0x0100, Arg0)
            }
        }

        Method (OPTF, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Store (VDP1 (0x0A, 0x00), Local1)
            }
            Else
            {
                Store (Arg1, Local1)
                Store (VDP1 (0x09, Local1), Local1)
            }

            Return (Local1)
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00010000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            If (LGreater (Local0, RVBS))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                           
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                           
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1)
            }
            Else
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1)
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)
            Return (ROM2)
        }

        Method (GOBT, 1, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Name (OPVK, Buffer (0xE6)
            {
                /* 0000 */  0xF6, 0x98, 0x1F, 0x12, 0xCE, 0x93, 0x64, 0x00,
                /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */  0x6F, 0x72, 0x20, 0x36, 0x39, 0x31, 0x32, 0x37,
                /* 0058 */  0x37, 0x31, 0x31, 0x39, 0x65, 0x73, 0x63, 0x20,
                /* 0060 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
                /* 0068 */  0x2D, 0x20, 0x2E, 0x27, 0x4B, 0x5A, 0x4E, 0x5E,
                /* 0070 */  0x30, 0x58, 0x4B, 0x5B, 0x49, 0x48, 0x37, 0x30,
                /* 0078 */  0x51, 0x42, 0x5C, 0x4D, 0x3B, 0x42, 0x20, 0x2B,
                /* 0080 */  0x22, 0x40, 0x3A, 0x22, 0x3F, 0x40, 0x2A, 0x5A,
                /* 0088 */  0x43, 0x48, 0x47, 0x58, 0x52, 0x39, 0x50, 0x31,
                /* 0090 */  0x57, 0x3A, 0x2A, 0x48, 0x28, 0x44, 0x54, 0x25,
                /* 0098 */  0x3C, 0x4E, 0x31, 0x3B, 0x51, 0x47, 0x20, 0x2D,
                /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
            })
            Name (KEQ5, Buffer (0xE2)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00E0 */  0x00, 0x00                                     
            })
            Name (KEQ3, Buffer (0xE6)
            {
                /* 0000 */  0x0A, 0x3E, 0xAA, 0x33, 0xF1, 0x60, 0xB0, 0xD2,
                /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */  0x6F, 0x72, 0x20, 0x37, 0x30, 0x31, 0x33, 0x35,
                /* 0058 */  0x36, 0x5F, 0x42, 0x33, 0x63, 0x20, 0x20, 0x20,
                /* 0060 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
                /* 0068 */  0x2D, 0x20, 0x57, 0x47, 0x23, 0x2D, 0x44, 0x5D,
                /* 0070 */  0x34, 0x43, 0x3C, 0x35, 0x2E, 0x20, 0x45, 0x4D,
                /* 0078 */  0x24, 0x41, 0x57, 0x20, 0x24, 0x23, 0x47, 0x38,
                /* 0080 */  0x37, 0x45, 0x3E, 0x2D, 0x2D, 0x2A, 0x4A, 0x22,
                /* 0088 */  0x28, 0x45, 0x42, 0x5C, 0x25, 0x4A, 0x4A, 0x24,
                /* 0090 */  0x3B, 0x29, 0x20, 0x45, 0x2C, 0x30, 0x46, 0x5E,
                /* 0098 */  0x24, 0x51, 0x5F, 0x31, 0x2E, 0x43, 0x20, 0x2D,
                /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
            })
            Name (KEQ1, Buffer (0xE6)
            {
                /* 0000 */  0x96, 0x11, 0x1D, 0x0F, 0x09, 0x3D, 0x42, 0x13,
                /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */  0x6F, 0x72, 0x20, 0x37, 0x30, 0x31, 0x33, 0x35,
                /* 0058 */  0x36, 0x5F, 0x30, 0x45, 0x33, 0x41, 0x5F, 0x31,
                /* 0060 */  0x34, 0x41, 0x34, 0x63, 0x20, 0x20, 0x20, 0x20,
                /* 0068 */  0x2D, 0x20, 0x43, 0x32, 0x5B, 0x57, 0x48, 0x5F,
                /* 0070 */  0x34, 0x41, 0x38, 0x4E, 0x26, 0x36, 0x59, 0x5F,
                /* 0078 */  0x54, 0x57, 0x23, 0x49, 0x3C, 0x4C, 0x2B, 0x5B,
                /* 0080 */  0x54, 0x27, 0x5B, 0x46, 0x44, 0x5F, 0x3E, 0x53,
                /* 0088 */  0x39, 0x4A, 0x4F, 0x45, 0x2C, 0x51, 0x4D, 0x27,
                /* 0090 */  0x34, 0x29, 0x3D, 0x5E, 0x27, 0x44, 0x5B, 0x2F,
                /* 0098 */  0x55, 0x26, 0x2A, 0x59, 0x35, 0x2F, 0x20, 0x2D,
                /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
            })
            Name (KPQ3, Buffer (0xE6)
            {
                /* 0000 */  0xE8, 0xD2, 0xA6, 0x4F, 0xD4, 0xC1, 0x2C, 0xBF,
                /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */  0x6F, 0x72, 0x20, 0x37, 0x30, 0x31, 0x33, 0x35,
                /* 0058 */  0x36, 0x5F, 0x31, 0x31, 0x2E, 0x38, 0x5F, 0x30,
                /* 0060 */  0x44, 0x44, 0x41, 0x63, 0x20, 0x20, 0x20, 0x20,
                /* 0068 */  0x2D, 0x20, 0x41, 0x30, 0x59, 0x29, 0x46, 0x5D,
                /* 0070 */  0x32, 0x47, 0x36, 0x4C, 0x20, 0x34, 0x57, 0x5D,
                /* 0078 */  0x52, 0x52, 0x21, 0x47, 0x3A, 0x4E, 0x29, 0x59,
                /* 0080 */  0x53, 0x39, 0x59, 0x44, 0x46, 0x5D, 0x3C, 0x51,
                /* 0088 */  0x37, 0x4F, 0x4D, 0x43, 0x22, 0x57, 0x4B, 0x24,
                /* 0090 */  0x41, 0x27, 0x3B, 0x5C, 0x21, 0x42, 0x59, 0x2D,
                /* 0098 */  0x53, 0x23, 0x28, 0x57, 0x33, 0x21, 0x20, 0x2D,
                /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
            })
            Name (KPQ1, Buffer (0xE6)
            {
                /* 0000 */  0x1C, 0x4E, 0xA9, 0xBE, 0xF9, 0x38, 0x7C, 0x33,
                /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */  0x6F, 0x72, 0x20, 0x37, 0x30, 0x31, 0x33, 0x35,
                /* 0058 */  0x36, 0x5F, 0x31, 0x31, 0x2E, 0x38, 0x5F, 0x30,
                /* 0060 */  0x44, 0x46, 0x41, 0x63, 0x20, 0x20, 0x20, 0x20,
                /* 0068 */  0x2D, 0x20, 0x43, 0x32, 0x5B, 0x57, 0x48, 0x5F,
                /* 0070 */  0x34, 0x41, 0x38, 0x4E, 0x26, 0x36, 0x59, 0x5F,
                /* 0078 */  0x54, 0x50, 0x23, 0x49, 0x3C, 0x4C, 0x2B, 0x5B,
                /* 0080 */  0x55, 0x27, 0x5B, 0x46, 0x44, 0x5F, 0x3E, 0x53,
                /* 0088 */  0x39, 0x4D, 0x4F, 0x45, 0x2C, 0x51, 0x4D, 0x26,
                /* 0090 */  0x41, 0x29, 0x3D, 0x5E, 0x27, 0x44, 0x5B, 0x2F,
                /* 0098 */  0x55, 0x21, 0x2A, 0x59, 0x35, 0x2F, 0x20, 0x2D,
                /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                While (One)
                {
                    Store (VDID, _T_0)
                    If (LEqual (_T_0, 0x109A))
                    {
                        Return (KEQ5)
                    }
                    ElseIf (LEqual (_T_0, 0x0E3B))
                    {
                        Return (KEQ3)
                    }
                    ElseIf (LEqual (_T_0, 0x0E3A))
                    {
                        Return (KEQ1)
                    }
                    ElseIf (LEqual (_T_0, 0x0DDA))
                    {
                        Return (KPQ3)
                    }
                    ElseIf (LEqual (_T_0, 0x0DFA))
                    {
                        Return (KPQ1)
                    }

                    Break
                }

                Return (OPVK)
            }

            Return (Zero)
        }

        Name (OMPR, 0x02)
        Name (\NHDA, 0x01)
        Method (NVOP, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            While (One)
            {
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, 0x00))
                {
                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    Divide (0x00, 0x08, Local2, Local1)
                    ShiftLeft (0x01, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x1A, 0x08, Local2, Local1)
                    ShiftLeft (0x01, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x10, 0x08, Local2, Local1)
                    ShiftLeft (0x01, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x1B, 0x08, Local2, Local1)
                    ShiftLeft (0x01, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x1A))
                {
                    CreateField (Arg3, 0x18, 0x02, OPCE)
                    CreateField (Arg3, 0x00, 0x01, FLCH)
                    If (ToInteger (FLCH))
                    {
                        Store (OPCE, OMPR)
                    }

                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    CreateField (Local0, 0x00, 0x01, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, 0x01, SHPC)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    Store (One, OPEN)
                    Store (One, SHPC)
                    Store (0x02, HDAC)
                    Store (One, DGPC)
                    If (_STA ())
                    {
                        Store (0x03, CGCS)
                    }

                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x1B))
                {
                    Store (Arg3, Local0)
                    CreateField (Local0, 0x00, 0x01, OPFL)
                    CreateField (Local0, 0x01, 0x01, OPVL)
                    If (ToInteger (OPVL))
                    {
                        OPTF (0x01, 0x00)
                        Store (Zero, NHDA)
                        If (ToInteger (OPFL))
                        {
                            OPTF (0x01, 0x01)
                            Store (One, NHDA)
                        }
                    }

                    Store (OPTF (0x00, 0x00), Local0)
                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x10))
                {
                    Return (\_SB.PCI0.PEG0.VID.GOBT (Arg3))
                }

                Break
            }

            Return (0x80000002)
        }

        OperationRegion (GPSP, SystemIO, 0x0500, 0x40)
        Field (GPSP, ByteAcc, Lock, Preserve)
        {
            Offset (0x38), 
                ,   2, 
            PO34,   1
        }

        Name (DGOS, 0x00)
        OperationRegion (PCNV, PCI_Config, 0x0488, 0x04)
        Field (PCNV, AnyAcc, NoLock, Preserve)
        {
                ,   25, 
            MLTF,   1
        }
        
        Method(_INI) { _OFF() }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            Store (0x00, PO34)
            ECS4 (0x01)
            Sleep (0x012C)
            Store (0x01, PO34)
            Sleep (0x64)
            Store (0x00, LNKM)
            While (LLess (LNKS, 0x07))
            {
                Sleep (0x01)
            }

            Sleep (0x64)
            Store (PEGB, PREG)
            Sleep (0x64)
            Store (VGAB, VREG)
            Sleep (0x64)
            Store (SSDS, SSID)
            Store (0x01, LNKD)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            Sleep (0x64)
            Store (PREG, PEGB)
            Sleep (0x64)
            Store (VREG, VGAB)
            Sleep (0x64)
            Store (0x01, LNKM)
            While (LNotEqual (LNKS, 0x00))
            {
                Sleep (0x01)
            }

            Store (0x00, PO34)
            ECS4 (0x00)
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (DGOS)
            {
                _ON ()
                Store (Zero, DGOS)
                Store (Zero, MLTF)
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (\_SB.PCI0.PEG0.VID.OMPR, 0x03))
            {
                _OFF ()
                Store (One, DGOS)
                Store (0x02, \_SB.PCI0.PEG0.VID.OMPR)
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (CMPB, 2, NotSerialized)
        {
            Store (SizeOf (Arg0), Local1)
            If (LNotEqual (Local1, SizeOf (Arg1)))
            {
                Return (0x00)
            }

            Store (0x00, Local0)
            While (LLess (Local0, Local1))
            {
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0))))
                {
                    Return (0x00)
                }

                Increment (Local0)
            }

            Return (0x01)
        }

        Method (UCMP, 2, NotSerialized)
        {
            If (LNotEqual (0x10, SizeOf (Arg0)))
            {
                Return (Zero)
            }

            If (LNotEqual (0x10, SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Store (Zero, Local0)
            While (LLess (Local0, 0x10))
            {
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0))))
                {
                    Return (Zero)
                }

                Increment (Local0)
            }

            Return (One)
        }

        Method (CSCF, 0, NotSerialized)
        {
            If (LAnd (LEqual (IDMN, 0xE430), LEqual (IDPC, 0x0308)))
            {
                Return (One)
            }
            ElseIf (LAnd (LEqual (IDMN, 0xE430), LEqual (IDPC, 0x0310)))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (XDSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (UCMP (Arg0, ToUUID ("d4a50b75-65c7-46f7-bfb7-41514cea0244")), One))
            {
                If (LNotEqual (Arg1, 0x0102))
                {
                    Return (0x80000002)
                }

                While (One)
                {
                    Store (Arg2, _T_0)
                    If (LEqual (_T_0, 0x00))
                    {
                        VDP1 (0x06, 0x00)
                        Return (Buffer (0x08)
                        {
                             0x21, 0x00, 0x18, 0x00                         
                        })
                    }
                    ElseIf (LEqual (_T_0, 0x05))
                    {
                        CreateDWordField (Arg3, 0x00, DSTS)
                        If (And (DSTS, 0x01000000))
                        {
                            And (DSTS, 0x0FFF, GATD)
                            And (ShiftRight (DSTS, 0x0C), 0x0FFF, GACD)
                        }

                        If (LEqual (HPEV, 0x01))
                        {
                            Store (0x00, HPEV)
                            Return (Buffer (0x04)
                            {
                                 0x00, 0x00, 0x30, 0x00                         
                            })
                        }

                        Return (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        })
                    }
                    ElseIf (LEqual (_T_0, 0x13))
                    {
                        Return (Buffer (0x04)
                        {
                             0x00, 0x06, 0x00, 0x00                         
                        })
                    }
                    ElseIf (LEqual (_T_0, 0x14))
                    {
                        If (LEqual (ECGB (), 0x01))
                        {
                            If (LEqual (OIDE (), 0x01))
                            {
                                Return (Package (0x0C)
                                {
                                    0x80000400, 
                                    0x0200, 
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x01, 
                                    0xC8, 
                                    0x00, 
                                    0x03E8, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                            }
                            Else
                            {
                                Return (Package (0x0C)
                                {
                                    0x80000400, 
                                    0x0100, 
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x01, 
                                    0xC8, 
                                    0x00, 
                                    0x03E8, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                            }
                        }
                        ElseIf (LEqual (OIDE (), 0x01))
                        {
                            Return (Package (0x0C)
                            {
                                0x8000A450, 
                                0x0200, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x01, 
                                0xC8, 
                                0x00, 
                                0x03E8, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                        }
                        Else
                        {
                            Return (Package (0x0C)
                            {
                                0x8000A450, 
                                0x0100, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x01, 
                                0xC8, 
                                0x00, 
                                0x03E8, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x16))
                    {
                        CreateDWordField (Arg3, 0x00, LMOD)
                        If (LEqual (LMOD, 0x01))
                        {
                            Store (VEND, Local0)
                            ShiftRight (Local0, 0x10, Local0)
                            If (LOr (LEqual (SVID, 0x053E1028), LEqual (SVID, 0x053F1028)))
                            {
                                While (One)
                                {
                                    Store (Local0, _T_1)
                                    If (LEqual (_T_1, 0x11BC))
                                    {
                                        Return (L3D0)
                                    }
                                    ElseIf (LEqual (_T_1, 0x11BD))
                                    {
                                        Return (L3D1)
                                    }
                                    ElseIf (LEqual (_T_1, 0x11BE))
                                    {
                                        Return (L3D2)
                                    }
                                    Else
                                    {
                                        Return (0x80000002)
                                    }

                                    Break
                                }
                            }
                        }
                        ElseIf (LEqual (LMOD, 0x02))
                        {
                            Return (0x80000002)
                        }

                        Return (0x80000002)
                    }

                    Break
                }

                Return (0x80000002)
            }
            ElseIf (CMPB (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                If (LEqual (NOPE, 0x00))
                {
                    Return (0x80000002)
                }

                Return (\_SB.PCI0.PEG0.VID.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            Return (0x80000001)
        }
    }
}

